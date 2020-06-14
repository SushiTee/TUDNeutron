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
#include <QMutexLocker>
#include <networkcontroller.h>
#include <bitset>

constexpr size_t PACKAGE_HEADER_SIZE = 3;
#ifdef __linux__
constexpr int quitSignal = SIGINT;
sighandler_t prevSignal;
#endif

constexpr uint32_t PACKET_SIZE = 0x10000u;

union payloadSizeConverter {
    std::byte bytes[2];
    uint16_t num;
};

union int32converter {
    std::byte bytes[4];
    uint32_t num;
};

struct valueConverter {
    unsigned value2 : 14, value1 : 14, sensor : 4;
};

NetworkHandler::NetworkHandler(NetworkController *parent)
    : m_controller(parent),
      m_inputTrigger(parent->inputTrigger() ? 1u : 0u),
      m_storageLocation(parent->storageLocation()),
      m_sensorDataValues(8)
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
    if (m_fileStream.is_open()) {
        m_fileStream.flush();
        m_fileStream.close();
    }
}

void NetworkHandler::quit()
{
    m_quit = true;
    if (m_sock != nullptr) {
        m_sock->close();
    }
}

void NetworkHandler::openFile(QList<bool> &list)
{
    QString timeString = QDateTime::currentDateTime().toString(Qt::ISODate);
    QDir::setCurrent(m_storageLocation);
    QString sensorStr = "";
    for (int i = 0; i < list.size(); i++) {
        if (list[i]) {
            sensorStr += QString::number(i + 1);
        }
    }
    QString filename = timeString + "_Sensor_"  +sensorStr + ".bin";
    m_fileStream.open(filename.replace(" ", "-").replace(":", ".").toStdString(), std::ios::out | std::ios::binary);
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

        // setting settings on connection!
        kn::buffer<1> buff;
        buff[0] = static_cast<std::byte>(m_inputTrigger);
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
            ? static_cast<uint32_t>(payloadSize) * 4 * PACKET_SIZE
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
    m_mutex.lock();
    QMetaObject::invokeMethod(m_controller, "sensorData", Q_ARG(QVector<double>, m_sensorDataValues));
    m_mutex.unlock();
}

void NetworkHandler::handleData(kn::buffer<BUFFER_SIZE> &buff, MessageType::Message type, size_t size)
{
    switch (type)
    {
    case MessageType::Message::DMA0:
    {
        if (!size) {
            size = 0x10000u;
        }
        uint64_t dataSize = size * PACKET_SIZE;
        m_mutex.lock();
        uint32_t avarageVoltage[8] = {0};
        uint64_t dataEnd = dataSize * 4;
        uint8_t runs = 0;
        for (auto i = 0; i < 8; i++) {
            if (m_controller->activeSensors() & (1 << i)) {
                runs++;
            }
        }
        for (auto j = 0; j < runs; j++) {
            for (auto i = 0; i < 5; i++) {
                auto offset = dataEnd - ((4*i*runs)+4+(j*4));
                if (offset < 0) break;
                valueConverter values = *reinterpret_cast<valueConverter*>(buff.data() + offset);
                avarageVoltage[values.sensor] += values.value1 + values.value2;
            }
        }
        for (auto i = 0; i < 8; i++) {
            m_sensorDataValues[i] = (static_cast<double>(avarageVoltage[i] / 10) / static_cast<double>(0b11111111111111)) * 2 - 1;
        }

        m_mutex.unlock();
        m_fileStream.write(reinterpret_cast<const char*>(buff.data()), static_cast<std::streamsize>(dataSize * 4));
        break;
    }
    case MessageType::Message::START_DMA: {
        m_mutex.lock();
        m_sensorDataValues = QVector<double>(8);
        m_mutex.unlock();
        handleStartStopMessage(type, reinterpret_cast<const char *>(buff.data()), static_cast<int>(size));
        break;
    }
    case MessageType::Message::STOP_DMA: {
        if (m_fileStream.is_open()) {
            m_fileStream.flush();
            m_fileStream.close();
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
