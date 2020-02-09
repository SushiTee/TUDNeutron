#pragma once

#include <thread>
#include <QObject>
#include <external/networking/kissnet.hpp>
#include <messagetype.h>
#include <fstream>

namespace kn = kissnet;

constexpr size_t BUFFER_SIZE = 1048576u;

class NetworkController;
class NetworkHandler : public QObject {
    Q_OBJECT

    NetworkController *m_controller = nullptr;
    std::unique_ptr<kn::tcp_socket> m_sock = nullptr;
    std::unique_ptr<std::thread> m_receiveThread = nullptr;
    std::atomic<bool> m_quit = false;
    uint8_t m_packageSizeIndex;
    uint16_t m_packageSize;
    uint8_t m_inputTrigger;
    uint8_t m_testGenerator;
    uint8_t m_testSignalCount;

    // reserve buffer
    kn::buffer<BUFFER_SIZE> m_recvBuff;
    QVector<uint64_t> m_sensorDataCount;
    std::ofstream m_stream;

    bool receiveData();
    void sendData(const std::byte *header, const std::byte *data, size_t dataLength) const;
    void handleData(kn::buffer<BUFFER_SIZE> &buff, MessageType::Message type, size_t size);
    bool isSocketValid(kn::socket_status status) const;

public:
    NetworkHandler(NetworkController *parent);
    ~NetworkHandler();
    void quit();

public slots:
    void networkConnect(QString host, int port);
    void sendData(MessageType::Message type, QString data) const;
    void sendData(MessageType::Message type, const std::byte *data, size_t length) const;
    void sendData(MessageType::Message type, uint8_t value) const; // send only one value
    QVector<uint64_t> getSensorData();
};
