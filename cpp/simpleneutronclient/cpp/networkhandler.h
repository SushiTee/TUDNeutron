#pragma once

#include <thread>
#include <QObject>
#include <QMutex>
#include <external/networking/kissnet.hpp>
#include <messagetype.h>
#include <fstream>

namespace kn = kissnet;

constexpr size_t BUFFER_SIZE = 1048576u;

class NetworkController;
class NetworkHandler : public QObject {
    Q_OBJECT

    NetworkController *m_controller = nullptr;
    std::atomic<bool> m_quit = false;
    std::unique_ptr<kn::tcp_socket> m_sock = nullptr;
    std::unique_ptr<std::thread> m_receiveThread = nullptr;
    uint8_t m_packageSizeIndex;
    uint16_t m_packageSize;
    uint8_t m_inputTrigger;
    uint8_t m_testGenerator;
    uint32_t m_testSignalCount;
    uint32_t m_testSignalFrequency;
    QString m_storageLocation;
    QMutex m_mutex;

    // reserve buffer
    kn::buffer<BUFFER_SIZE> m_recvBuff;
    QVector<uint64_t> m_sensorDataCount;
    std::array<std::ofstream, 8> m_fileStreams;

    bool receiveData();
    void sendData(const std::byte *header, const std::byte *data, size_t dataLength) const;
    void handleData(kn::buffer<BUFFER_SIZE> &buff, MessageType::Message type, size_t size);
    bool isSocketValid(kn::socket_status status) const;
    void handleStartStopMessage(MessageType::Message type, const char *data, int size);

public:
    NetworkHandler(NetworkController *parent);
    ~NetworkHandler();
    void quit();
    void openFiles(QList<bool> &list);

public slots:
    void networkConnect(QString host, int port);
    void startMeasurement(QList<bool> sensorsList, uint32_t measurementTime);
    void sendData(MessageType::Message type, QString data) const;
    void sendData(MessageType::Message type, const std::byte *data, size_t length) const;
    void sendData(MessageType::Message type, uint8_t value) const; // send only one value
    void getSensorData();
};
