#pragma once

#include <thread>
#include <QObject>
#include <QMutex>
#include <external/networking/kissnet.hpp>
#include <messagetype.h>
#include <fstream>
#include <meanring.h>

namespace kn = kissnet;

constexpr size_t BUFFER_SIZE = 0x280000u; // 10 MB BUffer

class NetworkController;
class NetworkHandler : public QObject {
    Q_OBJECT

    NetworkController *m_controller = nullptr;
    std::atomic<bool> m_quit = false;
    std::unique_ptr<kn::tcp_socket> m_sock = nullptr;
    std::unique_ptr<std::thread> m_receiveThread = nullptr;
    uint8_t m_inputTrigger;
    QString m_storageLocation;
    QMutex m_mutex;

    // reserve buffer
    kn::buffer<BUFFER_SIZE> m_recvBuff;
    QVector<double> m_sensorDataValues;
    QVector<uint64_t> m_impulseCount;
    std::ofstream m_fileStream;

    std::vector<MeanRing> m_sensorMeans;
    std::vector<uint16_t> m_lowValue;
    std::vector<uint16_t> m_highValue;
    std::vector<int8_t> m_dataDir;

    bool receiveData();
    void sendData(const std::byte *header, const std::byte *data, size_t dataLength) const;
    void handleData(kn::buffer<BUFFER_SIZE> &buff, MessageType::Message type, size_t size);
    bool isSocketValid(kn::socket_status status) const;
    void handleStartStopMessage(MessageType::Message type, const char *data, int size);

public:
    NetworkHandler(NetworkController *parent);
    ~NetworkHandler();
    void quit();
    void openFile(QList<bool> &list);

public slots:
    void networkConnect(QString host, int port);
    void sendData(MessageType::Message type, QString data) const;
    void sendData(MessageType::Message type, const std::byte *data, size_t length) const;
    void sendData(MessageType::Message type, uint8_t value) const; // send only one value
    void getSensorData();
    void getSensorCount();
};
