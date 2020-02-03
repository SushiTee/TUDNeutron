#include <QDebug>
#include <QThread>
#include <networkhandler.h>
#include <networkcontroller.h>


NetworkController::NetworkController(QString host, int port, QObject *parent) : QObject(parent), m_host(host), m_port(port)
{
    QObject::connect(this, &NetworkController::connected, this, [this](bool success){
        if (success) {
            setConnected(ConnectedState::CONNECTED);
        } else if (getConnected() != ConnectedState::DISCONNECTED){
            setConnected(ConnectedState::FAILED);
        }
    });
    QObject::connect(this, &NetworkController::closedConnection, this, [this](){
        setConnected(ConnectedState::FAILED);
        this->disconnect();
    });
    QObject::connect(this, &NetworkController::sendDataFailed, this, [this](){
        setConnected(ConnectedState::FAILED);
        this->disconnect();
    });
}

NetworkController::~NetworkController()
{
    if (m_thread != nullptr) {
        m_handler->quit();
        m_thread->quit();
        m_thread->wait();
        m_thread = nullptr;
    }
}

QObject *NetworkController::instance(QQmlEngine *engine, QJSEngine *scriptEngine)
{
    Q_UNUSED(engine)
    Q_UNUSED(scriptEngine)
    return getInstanceImpl();
}

QObject *NetworkController::getInstanceImpl(QString host, int port, QObject *parent)
{
    static NetworkController *instance = new NetworkController(host, port, parent);
    return instance;
}

QString NetworkController::host() const
{
    return m_host;
}

void NetworkController::setHost(QString host)
{
    if (m_host == host)
        return;

    m_host = host;
    emit hostChanged(m_host);
}

int NetworkController::packageSize() const
{
    return m_packageSize;
}

void NetworkController::setPackageSize(int packageSize)
{
    if (m_packageSize == packageSize)
        return;

    m_packageSize = packageSize;
    emit packageSizeChanged(m_packageSize);
}

int NetworkController::port() const
{
    return m_port;
}

void NetworkController::setPort(int port)
{
    if (m_port == port)
        return;

    m_port = port;
    emit portChanged(m_port);
}

NetworkController::ConnectedState NetworkController::getConnected()
{
    return m_connected;
}

void NetworkController::setConnected(ConnectedState connected)
{
    if (m_connected == connected) {
        return;
    }

    m_connected = connected;
    emit connectedChanged(m_connected);
}

void NetworkController::connect()
{
    if (getConnected() == ConnectedState::CONNECTED || getConnected() == ConnectedState::CONNECTING) return;

    setConnected(ConnectedState::CONNECTING);

    m_handler = std::make_unique<NetworkHandler>(this);
    m_thread = std::make_unique<QThread>();
    m_handler->moveToThread(m_thread.get());
    m_thread->start();
    QMetaObject::invokeMethod(m_handler.get(), "connect", Q_ARG(QString, host()), Q_ARG(int, port()));
}

void NetworkController::disconnect()
{
    if (getConnected() == ConnectedState::DISCONNECTED) return;
    if (m_thread != nullptr) {
        m_handler->quit();
        m_thread->quit();
        m_thread->wait();
        m_thread = nullptr;
        setConnected(ConnectedState::DISCONNECTED);
    }
}

void NetworkController::sendMessage(MessageType type, QString message)
{
    QMetaObject::invokeMethod(m_handler.get(), "sendData", Q_ARG(NetworkController::MessageType, type), Q_ARG(QString, message));
}
