#pragma once

#include <memory>
#include <QObject>
#include <QThread>
#include <QQmlEngine>
#include <QJsonDocument>
#include <QVariantList>
#include <external/networking/kissnet.hpp>
#include <messagetype.h>
#include <networkhandler.h>

namespace kn = kissnet;

class NetworkHandler;

class NetworkController : public QObject {
    Q_OBJECT
public:
    NetworkController() = delete;
    explicit NetworkController(QString host, int port, QObject *parent);
    ~NetworkController();
    NetworkController(const NetworkController&) = delete;
    void operator=(const NetworkController&) = delete;

    static QObject *instance(QQmlEngine *engine, QJSEngine *scriptEngine);
    static QObject *getInstanceImpl(QString host = "zedboard", int port = 22222, QObject *parent = nullptr);

    int packageSize() const;
    int testGenerator() const;
    int inputTrigger() const;
    uint32_t testSignalCount() const;
    int testSignalFrequency() const;
    QString storageLocation() const;

private:
    Q_PROPERTY(int port READ port WRITE setPort NOTIFY portChanged)
    Q_PROPERTY(QString host READ host WRITE setHost NOTIFY hostChanged)
    Q_PROPERTY(MessageType::ConnectedState connected READ getConnected NOTIFY connectedChanged)
    Q_PROPERTY(int packageSize READ packageSize WRITE setPackageSize NOTIFY packageSizeChanged)
    Q_PROPERTY(bool sensorsActive READ sensorsActive NOTIFY sensorsActiveChanged)
    Q_PROPERTY(int testGenerator READ testGenerator WRITE setTestGenerator NOTIFY testGeneratorChanged)
    Q_PROPERTY(int inputTrigger READ inputTrigger WRITE setInputTrigger NOTIFY inputTriggerChanged)
    Q_PROPERTY(uint32_t testSignalCount READ testSignalCount WRITE setTestSignalCount NOTIFY testSignalCountChanged)
    Q_PROPERTY(int testSignalFrequency READ testSignalFrequency WRITE setTestSignalFrequency NOTIFY testSignalFrequencyChanged)
    Q_PROPERTY(QVariantList sensors READ sensors NOTIFY sensorsChanged)
    Q_PROPERTY(QString storageLocation READ storageLocation WRITE setStorageLocation NOTIFY storageLocationChanged)

    QString m_host = "zedboard";
    int m_port = 22222;
    int m_packageSize = 4; // 2^m_PackageSize | e.g. 2^4 => 16 | between 1 and 12
    bool m_sensorsActive = false;
    int m_testGenerator = false;
    int m_inputTrigger = false;
    uint32_t m_testSignalCount = 1;
    int m_testSignalFrequency = 1;
    QVariantList m_sensors = {};
    QString m_storageLocation = "";
    MessageType::ConnectedState m_connected = MessageType::ConnectedState::DISCONNECTED;

    int port() const;
    void setPort(int port);
    QString host() const;
    void setHost(QString host);
    void setPackageSize(int packageSize);
    void setTestGenerator(int testGenerator);
    void setInputTrigger(int inputTrigger);
    void setTestSignalCount(uint32_t testSignalCount);
    void setTestSignalFrequency(int testSignalFrequency);
    void setSensors(QVariantList sensors);
    bool sensorsActive() const;
    void setSensorsActive(bool sensorsActive);
    void setStorageLocation(QString storageLocation);
    MessageType::ConnectedState getConnected();
    void setConnected(MessageType::ConnectedState connected);

    std::unique_ptr<NetworkHandler> m_handler = nullptr;
    std::unique_ptr<QThread> m_thread = nullptr;

public slots:
    void networkConnect();
    void networkDisconnect();
    void activateSensors(QList<bool> list);
    void deactivateSensors();
    QVariantList sensors();
    void requestSensorData();
    bool storageWritable();
    bool storageWritable(QString storageLocation);

signals:
    void hostChanged(QString host);
    void portChanged(int port);

    void connectedChanged(MessageType::ConnectedState connected);

    void networkDataError(QString message);

    // signals called from handler
    void connected(bool success, QJsonDocument doc);
    void closedConnection();
    void packageSizeChanged(int packageSize);
    void sensorsChanged(QVariantList sensors);
    void sensorsActiveChanged(bool sensorsActive);
    void sendDataFailed();
    void messageResult(MessageType::Message type, bool success, QString message);
    void testGeneratorChanged(int testGenerator);
    void inputTriggerChanged(int inputTrigger);
    void testSignalCountChanged(uint32_t testSignalCount);
    void testSignalFrequencyChanged(int testSignalFrequency);
    void storageLocationChanged(QString storageLocation);
    void dmaFull(int dma);
    void sensorData(QVector<uint64_t> sensorData);
};
