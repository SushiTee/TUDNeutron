#include <QDebug>
#include <QThread>
#include <QJsonArray>
#include <QFileInfo>
#include <networkhandler.h>
#include <networkcontroller.h>

NetworkController::~NetworkController()
{
    if (m_thread != nullptr) {
        m_handler->quit();
        m_thread->quit();
        m_thread->wait();
        m_thread = nullptr;
    }
}

NetworkController::NetworkController(QString host, int port, QObject *parent) : QObject(parent), m_host(host), m_port(port)
{
    QObject::connect(this, &NetworkController::connected, this, [this](bool success, QJsonDocument doc){
        auto failed = [this](QString message) {
            setConnected(MessageType::ConnectedState::FAILED);
            emit networkDataError("Could not connect to Zedboard (" + message + ")");
            networkDisconnect();
        };

        if (success) {
            QJsonValue::Type type = doc["switchState"].type();
            if (type == QJsonValue::Array) {
                QJsonArray switches = doc["switchState"].toArray();
                bool oneEnabled = false;
                for (auto val : switches) {
                    if (val.isBool() && val.toBool()) {
                        oneEnabled = true;
                        break;
                    }
                }
                if (!oneEnabled) {
                    failed("All sensors turned off by switch");
                } else {
                    setSensors(switches.toVariantList());
                    setConnected(MessageType::ConnectedState::CONNECTED);
                }
            } else if (type != QJsonValue::Undefined) {
                failed("All sensors turned off by switch");
            } else {
                failed("Available sensors not received");
            }
        } else if (getConnected() != MessageType::ConnectedState::DISCONNECTED){
            QString message = doc["msg"].toString();
            if (!message.isNull()) {
                failed(message);
            } else {
                failed("Not reachable");
            }
        }
    });
    QObject::connect(this, &NetworkController::closedConnection, this, [this](){
        setConnected(MessageType::ConnectedState::FAILED);
        networkDisconnect();
    });
    QObject::connect(this, &NetworkController::sendDataFailed, this, [this](){
        setConnected(MessageType::ConnectedState::FAILED);
        networkDisconnect();
    });
    QObject::connect(this, &NetworkController::messageResult, this, [this](MessageType::Message type, bool success, QString message){
        switch (type) {
        case MessageType::Message::START_DMA: {
            if (success) {
                setSensorsActive(true);
            } else {
                emit networkDataError("Could not activate sensors on Zedboard (" + message + ")");
                networkDisconnect();
            }
            break;
        }
        case MessageType::Message::STOP_DMA: {
            if (success) {
                setSensorsActive(false);
            } else {
                emit networkDataError("Could not deactivate sensors on Zedboard (" + message + ")");
                networkDisconnect();
            }
            break;
        }
        default:
            break;
        }
    });
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

    if (packageSize < 0) packageSize = 0;
    else if (packageSize > 12) packageSize = 12;
    m_packageSize = packageSize;
    emit packageSizeChanged(m_packageSize);
}

int NetworkController::testGenerator() const
{
    return m_testGenerator;
}

void NetworkController::setTestGenerator(int testGenerator)
{
    if (m_testGenerator == testGenerator)
        return;

    m_testGenerator = testGenerator;
    emit testGeneratorChanged(m_testGenerator);
}

int NetworkController::inputTrigger() const
{
    return m_inputTrigger;
}

void NetworkController::setInputTrigger(int inputTrigger)
{
    if (m_inputTrigger == inputTrigger)
        return;

    m_inputTrigger = inputTrigger;
    emit inputTriggerChanged(m_inputTrigger);
}

uint32_t NetworkController::testSignalCount() const
{
    return m_testSignalCount;
}

int NetworkController::testSignalFrequency() const
{
    return m_testSignalFrequency;
}

void NetworkController::setTestSignalCount(uint32_t testSignalCount)
{
    if (m_testSignalCount == testSignalCount)
        return;

    m_testSignalCount = testSignalCount;
    emit testSignalCountChanged(m_testSignalCount);
}

void NetworkController::setTestSignalFrequency(int testSignalFrequency)
{
    if (m_testSignalFrequency == testSignalFrequency)
        return;

    m_testSignalFrequency = testSignalFrequency;
    emit testSignalFrequencyChanged(m_testSignalFrequency);
}

void NetworkController::setSensors(QVariantList sensors)
{
    if (m_sensors == sensors)
        return;

    m_sensors = sensors;
    emit sensorsChanged(m_sensors);
}

bool NetworkController::sensorsActive() const
{
    return m_sensorsActive;
}

void NetworkController::setSensorsActive(bool sensorsActive)
{
    if (m_sensorsActive == sensorsActive)
        return;

    m_sensorsActive = sensorsActive;
    emit sensorsActiveChanged(m_sensorsActive);
}

QString NetworkController::storageLocation() const
{
    return m_storageLocation;
}

void NetworkController::setStorageLocation(QString storageLocation)
{
    if (m_storageLocation == storageLocation)
        return;

    m_storageLocation = storageLocation;
    emit storageLocationChanged(m_storageLocation);
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

MessageType::ConnectedState NetworkController::getConnected()
{
    return m_connected;
}

void NetworkController::setConnected(MessageType::ConnectedState connected)
{
    if (m_connected == connected) {
        return;
    }

    m_connected = connected;
    emit connectedChanged(m_connected);
}

void NetworkController::networkConnect()
{
    if (getConnected() == MessageType::ConnectedState::CONNECTED || getConnected() == MessageType::ConnectedState::CONNECTING) return;

    setConnected(MessageType::ConnectedState::CONNECTING);

    m_handler = std::make_unique<NetworkHandler>(this);
    m_thread = std::make_unique<QThread>();
    m_handler->moveToThread(m_thread.get());
    m_thread->start();
    QMetaObject::invokeMethod(m_handler.get(), "networkConnect", Q_ARG(QString, host()), Q_ARG(int, port()));
}

void NetworkController::networkDisconnect()
{
    if (getConnected() == MessageType::ConnectedState::DISCONNECTED) return;

    setSensors(QVariantList());
    setSensorsActive(false);
    if (m_thread != nullptr) {
        m_handler->quit();
        m_handler = nullptr;
        m_thread->quit();
        m_thread->wait();
        m_thread = nullptr;
        setConnected(MessageType::ConnectedState::DISCONNECTED);
    }
}

void NetworkController::activateSensors(QList<bool> list)
{
    if (!storageWritable()) {
        return;
    }

    m_handler->openFiles(list);
    uint8_t sensorsBinary = 0;
    for (int i = 0; i < list.size(); i++) {
        if (list[i]) {
            sensorsBinary |= (1 << i);
        }
    }
    QMetaObject::invokeMethod(m_handler.get(), "sendData", Q_ARG(MessageType::Message, MessageType::Message::START_DMA), Q_ARG(uint8_t, sensorsBinary));
}

void NetworkController::deactivateSensors()
{
    QMetaObject::invokeMethod(m_handler.get(), "sendData", Q_ARG(MessageType::Message, MessageType::Message::STOP_DMA), Q_ARG(uint8_t, 0));
}

QVariantList NetworkController::sensors()
{
    return m_sensors;
}

void NetworkController::requestSensorData()
{
    if (m_handler) {
        QMetaObject::invokeMethod(m_handler.get(), "getSensorData");
    }
}

bool NetworkController::storageWritable()
{
    return storageWritable(m_storageLocation);
}

bool NetworkController::storageWritable(QString storageLocation)
{
    QFileInfo dir(storageLocation);
    if (dir.isDir() && dir.isWritable()) {
        return true;
    }
    return false;
}
