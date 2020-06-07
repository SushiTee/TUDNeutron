#include <messagetype.h>

void MessageType::declareQML() {
    qmlRegisterType<MessageType>("AdcNeutron.MessageType", 1, 0, "MessageType");
}
