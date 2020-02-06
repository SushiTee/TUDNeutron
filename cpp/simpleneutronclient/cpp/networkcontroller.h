#pragma once

#include <memory>
#include <QObject>
#include <QThread>
#include <QQmlEngine>
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

private:
    Q_PROPERTY(int port READ port WRITE setPort NOTIFY portChanged)
    Q_PROPERTY(QString host READ host WRITE setHost NOTIFY hostChanged)
    Q_PROPERTY(MessageType::ConnectedState connected READ getConnected NOTIFY connectedChanged)
    Q_PROPERTY(int packageSize READ packageSize WRITE setPackageSize NOTIFY packageSizeChanged)
    Q_PROPERTY(bool packageSizeTransmitted READ packageSizeTransmitted NOTIFY packageSizeTransmittedChanged)
    Q_PROPERTY(bool sensorsActive READ sensorsActive NOTIFY sensorsActiveChanged)

    QString m_host = "zedboard";
    int m_port = 22222;
    int m_packageSize = 4; // 2^m_PackageSize | e.g. 2^4 => 16 | between 1 and 12
    bool m_packageSizeTransmitted = false;
    bool m_sensorsActive = false;
    MessageType::ConnectedState m_connected = MessageType::ConnectedState::DISCONNECTED;

    int port() const;
    void setPort(int port);
    QString host() const;
    void setHost(QString host);
    void setPackageSize(int packageSize);
    bool packageSizeTransmitted() const;
    void setPackageSizeTransmitted(bool packageSizeTransmitted);
    bool sensorsActive() const;
    void setSensorsActive(bool packageSizeTransmitted);
    MessageType::ConnectedState getConnected();
    void setConnected(MessageType::ConnectedState connected);

    std::unique_ptr<NetworkHandler> m_handler = nullptr;
    std::unique_ptr<QThread> m_thread = nullptr;

public slots:
    void connect();
    void disconnect();
    void activateSensors(QList<bool> list);
    void deactivateSensors();

signals:
    void hostChanged(QString host);
    void portChanged(int port);

    void connectedChanged(MessageType::ConnectedState connected);

    void networkDataError(QString message);

    // signals called from handler
    void connected(bool success);
    void closedConnection();
    void packageSizeChanged(int packageSize);
    void packageSizeTransmittedChanged(bool packageSizeTransmitted);
    void sensorsActiveChanged(bool sensorsActive);
    void sendDataFailed();
    void messageResult(MessageType::Message type, bool success, QString message);
    void sensorResult(QVector<uint64_t> sensorData);
};
