#include <iostream>
#include <sys/mman.h>
#include <memorycontrol/memorycontrol.h>
#include <gpio/wordlengthcontroller.h>

namespace adcneutron {
namespace components {
namespace gpio {

WordLengthController::WordLengthController(uint32_t registerBase, int mem)
 : Gpio(registerBase, mem) {
    setValue(DEFAULT_WORD_LENGTH);
}

WordLengthController::~WordLengthController() {
    setValue(DEFAULT_WORD_LENGTH);
}

WordLengthController &WordLengthController::getInstanceImpl(uint32_t registerBase, int mem) {
    static WordLengthController instance(registerBase, mem);
    return instance;
}
WordLengthController &WordLengthController::getInstance() {
    return getInstanceImpl();
}

void WordLengthController::init(uint32_t registerBase, int mem) {
    getInstanceImpl(registerBase, mem);
}

void WordLengthController::setWordLength(uint32_t length) {
    WordLengthController &ref = WordLengthController::getInstance();
    if (length != ref.mWordLength) {
        ref.mWordLength = length;
        ref.setValue(length);
    }
}

uint32_t WordLengthController::getWordLength() {
    WordLengthController &ref = WordLengthController::getInstance();
    return ref.mWordLength;
}

bool WordLengthController::hasError() {
    WordLengthController &ref = WordLengthController::getInstance();
    return ref.Gpio::hasError();
}

} // gpio    
} // components
} // adcneutron
