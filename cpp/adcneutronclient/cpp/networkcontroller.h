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

    int inputTrigger() const;
    QString storageLocation() const;
    uint8_t activeSensors() const;
    int trigger() const;
    int meanCount() const;

private:
    Q_PROPERTY(int port READ port WRITE setPort NOTIFY portChanged)
    Q_PROPERTY(QString host READ host WRITE setHost NOTIFY hostChanged)
    Q_PROPERTY(MessageType::ConnectedState connected READ getConnected NOTIFY connectedChanged)
    Q_PROPERTY(bool sensorsActive READ sensorsActive NOTIFY sensorsActiveChanged)
    Q_PROPERTY(int meanCount READ meanCount WRITE setMeanCount NOTIFY meanCountChanged)
    Q_PROPERTY(int trigger READ trigger WRITE setTrigger NOTIFY triggerChanged)
    Q_PROPERTY(int inputTrigger READ inputTrigger WRITE setInputTrigger NOTIFY inputTriggerChanged)
    Q_PROPERTY(QVariantList sensors READ sensors NOTIFY sensorsChanged)
    Q_PROPERTY(QString storageLocation READ storageLocation WRITE setStorageLocation NOTIFY storageLocationChanged)

    QString m_host = "zedboard";
    int m_port = 22222;
    bool m_sensorsActive = false;
    int m_inputTrigger = false;
    QVariantList m_sensors = {};
    QString m_storageLocation = "";
    MessageType::ConnectedState m_connected = MessageType::ConnectedState::DISCONNECTED;
    uint8_t m_activeSensors = 0u;
    int m_trigger = 150;
    int m_meanCount = 250;

    int port() const;
    void setPort(int port);
    QString host() const;
    void setHost(QString host);
    void setInputTrigger(int inputTrigger);
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
    void requestSensorCount();
    bool storageExists(QString storageLocation);
    bool storageWritable();
    bool storageWritable(QString storageLocation);
    void setTrigger(int trigger);
    void setMeanCount(int meanCount);

signals:
    void hostChanged(QString host);
    void portChanged(int port);

    void connectedChanged(MessageType::ConnectedState connected);

    void networkDataError(QString message);

    // signals called from handler
    void connected(bool success, QJsonDocument doc);
    void closedConnection();
    void sensorsChanged(QVariantList sensors);
    void sensorsActiveChanged(bool sensorsActive);
    void sendDataFailed();
    void messageResult(MessageType::Message type, bool success, QString message);
    void inputTriggerChanged(int inputTrigger);
    void storageLocationChanged(QString storageLocation);
    void dmaFull(int dma);
    void sensorData(QVector<double> sensorData);
    void sensorCount(QVector<uint64_t> sensorCount);
    void triggerChanged(int trigger);
    void meanCountChanged(int meanCount);
};
