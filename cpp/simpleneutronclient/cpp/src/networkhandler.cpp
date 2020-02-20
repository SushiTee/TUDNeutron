#include <cmath>
#ifdef __linux__
#include <csignal>
#endif
#include <QDebug>
#include <networkhandler.h>
#include <QJsonDocument>
#include <QJsonObject>
#include <QDateTime>
#include <QDir>
#include <networkcontroller.h>

constexpr size_t PACKAGE_HEADER_SIZE = 3;
#ifdef __linux__
constexpr int quitSignal = SIGINT;
sighandler_t prevSignal;
#endif

union payloadSizeConverter {
    std::byte bytes[2];
    uint16_t num;
};

union int32converter {
    std::byte bytes[24];
    uint32_t num;
};

NetworkHandler::NetworkHandler(NetworkController *parent)
    : m_controller(parent),
      m_packageSizeIndex(static_cast<uint8_t>(parent->packageSize())),
      m_packageSize(static_cast<uint16_t>(std::pow(2, parent->packageSize()))),
      m_inputTrigger(parent->inputTrigger() ? 1u : 0u),
      m_testGenerator(parent->testGenerator() ? 1u : 0u),
      m_testSignalCount(parent->testSignalCount()),
      m_testSignalFrequency(static_cast<uint32_t>(parent->testSignalFrequency())),
      m_storageLocation(parent->storageLocation()),
      m_sensorDataCount(8)
{
}

NetworkHandler::~NetworkHandler()
{
    if (m_receiveThread && m_receiveThread->joinable()) {
#ifdef __linux__
        // enforce POSIX semantics
        siginterrupt(quitSignal, true);

        // register signal handler
        prevSignal = std::signal(quitSignal, [](int) {
            // reset to previous (original) signal
            std::signal(quitSignal, prevSignal);
        });

        pthread_kill(m_receiveThread->native_handle(), quitSignal);
#endif

        m_receiveThread->join();
        m_receiveThread = nullptr;
#ifdef __linux__
        std::signal(quitSignal, prevSignal);
#endif
    }
    for (uint32_t i = 0; i < 8; i++) {
        if (m_fileStreams[i].is_open()) {
            m_fileStreams[i].flush();
            m_fileStreams[i].close();
        }
    }
}

void NetworkHandler::quit()
{
    m_quit = true;
    if (m_sock != nullptr) {
        m_sock->close();
    }
}

void NetworkHandler::openFiles(QList<bool> &list)
{
    QString timeString = QDateTime::currentDateTime().toString(Qt::ISODate);
    QDir::setCurrent(m_storageLocation);
    for (int i = 0; i < list.size(); i++) {
        if (list[i]) {
            QString filename = timeString + "_Sensor_" + QString::number(i + 1) + ".bin";
            m_fileStreams[static_cast<size_t>(i)].open(filename.replace(" ", "-").replace(":", ".").toStdString(), std::ios::out | std::ios::binary);
        }
    }
}

void NetworkHandler::networkConnect(QString host, int port)
{
    try {
        m_sock = std::make_unique<kn::tcp_socket>(kn::endpoint(host.toStdString(), static_cast<kn::port_t>(port)));
    } catch (const std::exception& e) {
        qDebug() << "Error creating socket:" << QString::fromStdString(e.what());
        QMetaObject::invokeMethod(m_controller, "connected", Q_ARG(bool, false), Q_ARG(QJsonDocument, QJsonDocument()));
        return;
    }

    if (m_sock->connect()) {
        m_receiveThread = std::make_unique<std::thread>([this](){
            bool continueReceiving = true;
            while (!m_quit && continueReceiving) {
                if (m_quit == true) {
                    break;
                }

                continueReceiving = receiveData();
                if (!continueReceiving) {
                    qDebug() << "Remote closed connected or disconnect";
                }
            }
            if (!m_quit) {
                QMetaObject::invokeMethod(m_controller, "closedConnection");
            }
        });
        // setting settings on connection! Order is important!
        int32converter testSignalCount;
        testSignalCount.num = m_testSignalCount;
        int32converter testSignalFrequency;
        testSignalFrequency.num = m_testSignalFrequency;
        kn::buffer<11> buff;
        buff[0] = static_cast<std::byte>(m_packageSizeIndex);
        buff[1] = static_cast<std::byte>(m_inputTrigger);
        buff[2] = static_cast<std::byte>(m_testGenerator);
        for (uint64_t i = 0; i < 4; i++) {
            buff[i+3] = testSignalCount.bytes[i];
            buff[i+7] = testSignalFrequency.bytes[i];
        }
        sendData(MessageType::Message::CONNECT, buff.data(), buff.size());
    } else {
        QMetaObject::invokeMethod(m_controller, "connected", Q_ARG(bool, false), Q_ARG(QJsonDocument, QJsonDocument()));
    }
}

bool NetworkHandler::receiveData() {
    // nested function to keep at leat a bit "DRY"
    auto receive = [this](kn::buffer<BUFFER_SIZE>& buff, size_t maxSize) {
        size_t packetDataReceived = 0;
        while (packetDataReceived < maxSize)
        {
            if (auto [size, valid] = m_sock->recv(buff.data() + packetDataReceived, maxSize - packetDataReceived); valid) { // C++17 <3
                // check if we got an interrupt
                if (m_quit) {
                    return false;
                }

                // socket might be invalid
                if (!isSocketValid(valid.value)) {
                    return false;
                }
                packetDataReceived += size;
            } else {
                return false;
            }
        }
        return true;
    };

    // get first 3 bytes of packet which is supposed to be the header!
    if (!receive(m_recvBuff, PACKAGE_HEADER_SIZE)) {
        return false;
    }

    // we got the first 3 bytes of our package!
    // read the type and check its valid (Byte 0 is the type)
    MessageType::Message messageType = static_cast<MessageType::Message>(m_recvBuff[0]);
    if (messageType >= MessageType::Message::NONE) {
        qCritical() << "Received invalid Message. Disconnecting!" << messageType;
        return false;
    }

    // type is OK! Get the payload size (Byte [1] and [2] conain the size)
    uint16_t payloadSize = * reinterpret_cast<const uint16_t *>(&m_recvBuff[1]);
    uint32_t byteSize = (messageType < MessageType::Message::START_DMA)
            ? static_cast<uint32_t>(payloadSize) * 4 * static_cast<uint32_t>(m_packageSize)
            : static_cast<uint32_t>(payloadSize);
    if (byteSize > BUFFER_SIZE) {
        qCritical() << "Payload too big (given: " << byteSize << " max: " << BUFFER_SIZE << "). Disconnecting!";
        return false;
    }

    // header done. Take care of payload
    if (!receive(m_recvBuff, byteSize)) {
        return false;
    }

    // everything is there \o/
    handleData(m_recvBuff, messageType, payloadSize);
    return true;
}

void NetworkHandler::sendData(const std::byte *header, const std::byte *data, size_t dataLength) const
{
    // send header
    {
        auto [size, valid] = m_sock->send(header, PACKAGE_HEADER_SIZE);

        // socket might be invalid
        if (size <= 0 || !isSocketValid(valid.value)) {
            QMetaObject::invokeMethod(m_controller, "sendDataFailed");
            return;
        }
    }

    // send data
    {
        auto [size, valid] = m_sock->send(data, dataLength);
        // check if we got an interrupt
        if (m_quit) {
            return;
        }

        // socket might be invalid
        if (size <= 0 || !isSocketValid(valid.value)) {
            QMetaObject::invokeMethod(m_controller, "sendDataFailed");
            return;
        }
    }
}

void NetworkHandler::sendData(MessageType::Message type, QString data) const
{
    // lengthh of data
    auto dataLength = static_cast<size_t>(data.length());

    // buffer
    kn::buffer<PACKAGE_HEADER_SIZE> message;

    // write header
    payloadSizeConverter conv;
    conv.num = static_cast<uint16_t>(dataLength);
    message[0] = static_cast<std::byte>(type);
    message[1] = conv.bytes[0];
    message[2] = conv.bytes[1];

    sendData(reinterpret_cast<const std::byte*>(message.data()), reinterpret_cast<const std::byte*>(data.data_ptr()), dataLength);
}

void NetworkHandler::sendData(MessageType::Message type, const std::byte* data, size_t length) const
{
    // buffer
    kn::buffer<PACKAGE_HEADER_SIZE> message;

    // write header
    payloadSizeConverter conv;
    conv.num = static_cast<uint16_t>(length);
    message[0] = static_cast<std::byte>(type);
    message[1] = conv.bytes[0];
    message[2] = conv.bytes[1];

    sendData(reinterpret_cast<const std::byte*>(message.data()), data, length);
}

void NetworkHandler::sendData(MessageType::Message type, uint8_t value) const
{
    // buffer
    kn::buffer<PACKAGE_HEADER_SIZE> message;

    // write header
    payloadSizeConverter conv;
    conv.num = static_cast<uint16_t>(1);
    message[0] = static_cast<std::byte>(type);
    message[1] = conv.bytes[0];
    message[2] = conv.bytes[1];

    sendData(reinterpret_cast<const std::byte*>(message.data()), reinterpret_cast<const std::byte*>(&value), 1);
}

void NetworkHandler::getSensorData()
{
    QMetaObject::invokeMethod(m_controller, "sensorData", Q_ARG(QVector<uint64_t>, m_sensorDataCount));
}

void NetworkHandler::handleData(kn::buffer<BUFFER_SIZE> &buff, MessageType::Message type, size_t size)
{
    switch (type)
    {
    case MessageType::Message::DMA0:
    case MessageType::Message::DMA1:
    case MessageType::Message::DMA2:
    case MessageType::Message::DMA3:
    case MessageType::Message::DMA4:
    case MessageType::Message::DMA5:
    case MessageType::Message::DMA6:
    case MessageType::Message::DMA7: {
        if (!size) {
            size = 0x10000u;
        }
        uint64_t dataSize = size * m_packageSize;
        m_sensorDataCount[static_cast<int>(type)] += dataSize;
        m_fileStreams[static_cast<size_t>(type)].write(reinterpret_cast<const char*>(buff.data()), static_cast<std::streamsize>(dataSize * 4));
        break;
    }
    case MessageType::Message::START_DMA: {
        m_sensorDataCount = QVector<uint64_t>(8);
        handleStartStopMessage(type, reinterpret_cast<const char *>(buff.data()), static_cast<int>(size));
        break;
    }
    case MessageType::Message::STOP_DMA: {
        for (uint32_t i = 0; i < 8; i++) {
            if (m_fileStreams[i].is_open()) {
                m_fileStreams[i].flush();
                m_fileStreams[i].close();
            }
        }
        handleStartStopMessage(type, reinterpret_cast<const char *>(buff.data()), static_cast<int>(size));
        break;
    }
    case MessageType::Message::CONNECT: {
        QJsonDocument doc = QJsonDocument::fromJson(QByteArray::fromRawData(reinterpret_cast<const char *>(buff.data()), static_cast<int>(size)));
        if (!doc.isNull()) {
            QString status = doc["status"].toString();
            if (status == "OK") {
                QMetaObject::invokeMethod(m_controller, "connected", Q_ARG(bool, true), Q_ARG(QJsonDocument, doc));
                return;
            } else {
                QString message = doc["msg"].toString();
                if (!message.isNull()) {
                    QMetaObject::invokeMethod(m_controller, "connected", Q_ARG(MessageType::Message, type), Q_ARG(bool, false), Q_ARG(QJsonDocument, doc));
                    return;
                }
            }
        }
        QMetaObject::invokeMethod(m_controller, "connected", Q_ARG(MessageType::Message, type), Q_ARG(bool, false), Q_ARG(QJsonDocument, doc));
        break;
    }
    case MessageType::Message::FIFO_FULL: {
        QJsonDocument doc = QJsonDocument::fromJson(QByteArray::fromRawData(reinterpret_cast<const char *>(buff.data()), static_cast<int>(size)));
        if (!doc.isNull()) {
            int dma = doc["dma"].toInt(-1);
            QMetaObject::invokeMethod(m_controller, "dmaFull", Q_ARG(int, dma));
            return;
        }
        QMetaObject::invokeMethod(m_controller, "damFull", Q_ARG(int, -1));
        break;
    }
    case MessageType::Message::NONE:
        break;
    }
}

bool NetworkHandler::isSocketValid(kissnet::socket_status status) const
{
    if (status == kn::socket_status::cleanly_disconnected) {
        qDebug() << "Cleanly disconnected!";
        return false;
    } else if (status == kn::socket_status::errored) {
        qDebug() << "disconnected!";
        return false;
    }
    return true;
}

void NetworkHandler::handleStartStopMessage(MessageType::Message type, const char* data, int size)
{
    QJsonDocument doc = QJsonDocument::fromJson(QByteArray::fromRawData(data, size));
    if (!doc.isNull()) {
        QString status = doc["status"].toString();
        if (status == "OK") {
            QMetaObject::invokeMethod(m_controller, "messageResult", Q_ARG(MessageType::Message, type), Q_ARG(bool, true), Q_ARG(QString, ""));
            return;
        } else {
            QString message = doc["msg"].toString();
            if (!message.isNull()) {
                QMetaObject::invokeMethod(m_controller, "messageResult", Q_ARG(MessageType::Message, type), Q_ARG(bool, false), Q_ARG(QString, message));
                return;
            }
        }
    }
    QMetaObject::invokeMethod(m_controller, "messageResult", Q_ARG(MessageType::Message, type), Q_ARG(bool, false), Q_ARG(QString, "Unexpected message from server"));
}
