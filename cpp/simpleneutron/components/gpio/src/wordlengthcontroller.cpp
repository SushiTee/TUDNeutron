#include <iostream>
#include <sys/mman.h>
#include <memorycontrol/memorycontrol.h>
#include <gpio/wordlengthcontroller.h>

namespace simpleneutron {
namespace components {
namespace gpio {

WordLengthController::WordLengthController(uint32_t registerBase, int mem)
 : Gpio(registerBase, mem)
{}

void WordLengthController::setWordLength(uint32_t length) {
    setValue(length);
}

uint32_t WordLengthController::getWordLength() {
    return getValue();
}

} // gpio    
} // components
} // simpleneutron
