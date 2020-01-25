#include <iostream>
#include <sys/mman.h>
#include <memorycontrol/memorycontrol.h>
#include <gpio/sensorcontroller.h>

namespace simpleneutron {
namespace components {
namespace gpio {

SensorController::SensorController(uint32_t registerBase, int mem)
 : Gpio(registerBase, mem) {
    setValue(0u); // turn off on init 
}

SensorController::~SensorController() {
    setValue(0u); // turn off on destroy
}

SensorController &SensorController::getInstanceImpl(uint32_t registerBase, int mem) {
    static SensorController instance(registerBase, mem);
    return instance;
}

SensorController &SensorController::getInstance() {
    return getInstanceImpl();
}

void SensorController::init(uint32_t registerBase, int mem) {
    getInstanceImpl(registerBase, mem);
}

void SensorController::activateAll() {
    SensorController &ref = SensorController::getInstance();
    if (ref.mSensorState != 0xffu) {
        ref.mSensorState = 0xffu;
        ref.setValue(0xffu);
    }
}

void SensorController::deactivateAll() {
    SensorController &ref = SensorController::getInstance();
    if (ref.mSensorState != 0u) {
        ref.mSensorState = 0u;
        ref.setValue(0u);
    }
}

void SensorController::activateSpecific(uint8_t value) {
    SensorController &ref = SensorController::getInstance();
    if (value != ref.mSensorState) {
        ref.mSensorState = value;
        ref.setValue(static_cast<uint32_t>(value));;
    }
}

uint8_t SensorController::getStatus() {
    SensorController &ref = SensorController::getInstance();
    return ref.mSensorState;
}

bool SensorController::hasError() {
    SensorController &ref = SensorController::getInstance();
    return ref.Gpio::hasError();
}

} // gpio    
} // components
} // simpleneutron
