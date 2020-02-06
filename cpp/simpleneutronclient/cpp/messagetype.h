#pragma once

#include <QQmlEngine>

class MessageType : public QObject
{
    Q_OBJECT
public:
    MessageType() : QObject() {}

    enum Message : uint8_t {
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
    Q_ENUM(Message)

    enum ConnectedState : uint8_t {
        CONNECTING = 0,
        CONNECTED,
        DISCONNECTED,
        FAILED
    };
    Q_ENUM(ConnectedState)

    // Do not forget to declare your class to the QML system.
    static void declareQML() {
        qmlRegisterType<MessageType>("SimpleNeutron.MessageType", 1, 0, "MessageType");
    }
};

Q_DECLARE_METATYPE(uint8_t)
Q_DECLARE_METATYPE(uint64_t)
Q_DECLARE_METATYPE(MessageType::Message)
Q_DECLARE_METATYPE(QVector<uint64_t>)
