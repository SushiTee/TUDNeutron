#include <iostream>
#include <sys/mman.h>
#include <memorycontrol/memorycontrol.h>
#include <gpio/sensorcontroller.h>

namespace simpleneutron {
namespace components {
namespace gpio {

SensorController::SensorController(uint32_t registerBase, int mem)
 : Gpio(registerBase, mem)
{}

void SensorController::activateAll() {
    setValue(0xffu);
}

void SensorController::deactivateAll() {
    setValue(0u);
}

void SensorController::activateSpecific(uint8_t value) {
    setValue(static_cast<uint32_t>(value));
}
uint8_t SensorController::getStatus() {
    return static_cast<uint8_t>(getValue());
}

} // gpio    
} // components
} // simpleneutron
