#pragma once

#include <QObject>
#include <QQmlEngine>
#include <external/networking/kissnet.hpp>

namespace kn = kissnet;

class NetworkController : public QObject {
    Q_OBJECT
public:
    enum MessageType : uint8_t {
        DMA0 = 0,
        DMA1,
        DMA2,
        DMA3,
        DMA4,
        DMA5,
        DMA6,
        DMA7,
        START_DMA,
        STOP_DMA,
        SET_PACKET_SIZE,

        NONE // marks the last Type (is used to determine valid types)
    };
    Q_ENUM(MessageType)

    enum ConnectedState : uint8_t {
        CONNECTING = 0,
        CONNECTED,
        DISCONNECTED,
        FAILED
    };
    Q_ENUM(ConnectedState)

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
    Q_PROPERTY(ConnectedState connected READ getConnected NOTIFY connectedChanged)
    Q_PROPERTY(int packageSize READ packageSize WRITE setPackageSize NOTIFY packageSizeChanged)
    Q_PROPERTY(bool packageSizeTransmitted READ packageSizeTransmitted NOTIFY packageSizeTransmittedChanged)

    QString m_host = "zedboard";
    int m_port = 22222;
    int m_packageSize = 4; // 2^m_PackageSize | e.g. 2^4 => 16 | between 1 and 12
    bool m_packageSizeTransmitted = false;
    ConnectedState m_connected = ConnectedState::DISCONNECTED;

    int port() const;
    void setPort(int port);
    QString host() const;
    void setHost(QString host);
    void setPackageSize(int packageSize);
    bool packageSizeTransmitted() const;
    void setPackageSizeTransmitted(bool packageSizeTransmitted);
    ConnectedState getConnected();
    void setConnected(ConnectedState connected);

    std::unique_ptr<class NetworkHandler> m_handler = nullptr;
    std::unique_ptr<QThread> m_thread = nullptr;

public slots:
    void connect();
    void disconnect();
    void sendMessage(MessageType type, QString message);

signals:
    void hostChanged(QString host);
    void portChanged(int port);

    void connectedChanged(ConnectedState connected);

    void networkDataError(QString message);

    // signals called from handler
    void connected(bool success);
    void closedConnection();
    void receiveMessage(int type, QVariant jsonData);
    void packageSizeChanged(int packageSize);
    void packageSizeTransmittedChanged(bool packageSizeTransmitted);
    void sendDataFailed();
    void setPackageSizeResult(bool success, QString message);
};

Q_DECLARE_METATYPE(NetworkController::MessageType)
