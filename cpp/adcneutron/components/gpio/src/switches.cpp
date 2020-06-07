#include <iostream>
#include <sys/mman.h>
#include <memorycontrol/memorycontrol.h>
#include <gpio/switches.h>

namespace adcneutron {
namespace components {
namespace gpio {

Switches::Switches(uint32_t registerBase, int mem)
 : Gpio(registerBase, mem) {}

Switches &Switches::getInstanceImpl(uint32_t registerBase, int mem) {
    static Switches instance(registerBase, mem);
    return instance;
}

Switches &Switches::getInstance() {
    return getInstanceImpl();
}

void Switches::init(uint32_t registerBase, int mem) {
    getInstanceImpl(registerBase, mem);
}

uint8_t Switches::getStatus() {
    Switches &ref = Switches::getInstance();
    return ref.getValue();
}

bool Switches::hasError() {
    Switches &ref = Switches::getInstance();
    return ref.Gpio::hasError();
}

} // gpio    
} // components
} // adcneutron
