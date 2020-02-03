#include <WinSock2.h>
#include <QDebug>
#include <networkhandler.h>
#include <QJsonDocument>
#include <QJsonObject>

constexpr size_t PACKAGE_HEADER_SIZE = 3;

union payloadSizeConverter {
    uint8_t bytes[2];
    uint16_t num;
};

NetworkHandler::NetworkHandler(NetworkController *parent)
    : m_controller(parent), m_packageSize(static_cast<uint16_t>(parent->packageSize()))
{

}

NetworkHandler::~NetworkHandler()
{
    if (m_receiveThread && m_receiveThread->joinable()) {
        m_receiveThread->join();
        m_receiveThread = nullptr;
    }
}

void NetworkHandler::quit()
{
    m_quit = true;
    m_sock->close();
}

void NetworkHandler::connect(QString host, int port)
{
    m_sock = std::make_unique<kn::tcp_socket>(kn::endpoint(host.toStdString(), static_cast<kn::port_t>(port)));
    if (m_sock->connect()) {
        m_receiveThread = std::make_unique<std::thread>([this](){
            bool continueReceiving = true;
            while (!m_quit && continueReceiving) {
                if (m_quit == true) {
                    break;
                }

                continueReceiving = receiveData();
                if (!continueReceiving) {
                    qDebug() << "Remote closed connected or a signal interrupt occured" << m_quit;
                }
            }
            if (!m_quit) {
                QMetaObject::invokeMethod(m_controller, "closedConnection");
            }
        });
        QMetaObject::invokeMethod(m_controller, "connected", Q_ARG(bool, true));
    } else {
        QMetaObject::invokeMethod(m_controller, "connected", Q_ARG(bool, false));
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
    NetworkController::MessageType messageType = static_cast<NetworkController::MessageType>(m_recvBuff[0]);
    if (messageType >= NetworkController::MessageType::NONE) {
        qCritical() << "Received invalid Message. Disconnecting!";
        return false;
    }

    // type is OK! Get the payload size (Byte [1] and [2] conain the size)
    uint16_t payloadSize = * reinterpret_cast<const uint16_t *>(&m_recvBuff[1]);
    uint32_t byteSize = (messageType < NetworkController::MessageType::START_DMA)
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

void NetworkHandler::sendData(NetworkController::MessageType type, QString data) const
{
    // lengthh of data
    auto dataLength = static_cast<size_t>(data.length());

    // buffer
    std::array<uint8_t, PACKAGE_HEADER_SIZE> message;

    // write header
    payloadSizeConverter conv;
    conv.num = static_cast<uint16_t>(dataLength);
    message[0] = static_cast<uint8_t>(type);
    message[1] = conv.bytes[0];
    message[2] = conv.bytes[1];

    // send header
    {
        auto [size, valid] = m_sock->send(reinterpret_cast<const std::byte*>(message.data()), PACKAGE_HEADER_SIZE);
        // check if we got an interrupt
        if (m_quit) {
            return;
        }

        // socket might be invalid
        if (!isSocketValid(valid.value)) {
            QMetaObject::invokeMethod(m_controller, "sendDataFailed");
            return;
        }
    }

    // send data
    {
        auto [size, valid] = m_sock->send(reinterpret_cast<const std::byte*>(data.data_ptr()), dataLength);
        // check if we got an interrupt
        if (m_quit) {
            return;
        }

        // socket might be invalid
        if (!isSocketValid(valid.value)) {
            QMetaObject::invokeMethod(m_controller, "sendDataFailed");
            return;
        }
    }
}

void NetworkHandler::handleData(kn::buffer<BUFFER_SIZE> &buff, NetworkController::MessageType type, size_t size)
{
    switch (type)
    {
    case NetworkController::MessageType::START_DMA: {
        qDebug() << "DMA start response";
        QJsonDocument doc = QJsonDocument::fromJson(QByteArray::fromRawData(reinterpret_cast<const char *>(buff.data()), static_cast<int>(size)));
        if (!doc.isNull()) {
            QMetaObject::invokeMethod(m_controller, "receiveMessage",
                                      Q_ARG(int, static_cast<int>(type)),
                                      Q_ARG(QVariant, QVariant::fromValue(doc.object())));
        }
        break;
    }
    case NetworkController::MessageType::STOP_DMA: {
        qDebug() << "DMA stop response";
        QJsonDocument doc = QJsonDocument::fromJson(QByteArray::fromRawData(reinterpret_cast<const char *>(buff.data()), static_cast<int>(size)));
        if (!doc.isNull()) {
            QMetaObject::invokeMethod(m_controller, "receiveMessage",
                                      Q_ARG(int, static_cast<int>(type)),
                                      Q_ARG(QVariant, QVariant::fromValue(doc.object())));
        }
        break;
    }
    default:
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
