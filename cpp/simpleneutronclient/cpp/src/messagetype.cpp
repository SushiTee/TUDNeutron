#include <messagetype.h>

void MessageType::declareQML() {
    qmlRegisterType<MessageType>("SimpleNeutron.MessageType", 1, 0, "MessageType");
}
