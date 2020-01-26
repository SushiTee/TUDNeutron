#include <iostream>
#include <sys/mman.h>
#include <logger/logger.h>
#include <memorycontrol/memorycontrol.h>
#include <gpio/gpio.h>

namespace simpleneutron {
namespace components {
namespace gpio {

using namespace memorycontrol;

Gpio::Gpio(uint32_t registerBase, int mem)
 : REGISTER_BASE(registerBase), mMem(mem)
{
    mRegister = (uint32_t *)mmap(NULL, 128, PROT_READ | PROT_WRITE, MAP_SHARED, mMem, REGISTER_BASE);
    if (mRegister == MAP_FAILED) {
        LogErr << "Gpio: could not map register" << std::endl;
        mHasError = true;
    }
}

void Gpio::setValue(uint32_t value) {
    mRegister[0] = value;
}

uint32_t Gpio::getValue() {
    return mRegister[0];
}

bool Gpio::hasError() const {
    return mHasError;
}

} // gpio    
} // components
} // simpleneutron
