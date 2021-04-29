#include <iostream>
#include <sys/mman.h>
#include <memorycontrol/memorycontrol.h>
#include <gpio/measurementstop.h>

namespace simpleneutron {
namespace components {
namespace gpio {

MeasurementStop::MeasurementStop(uint32_t registerBase, int mem)
 : Gpio(registerBase, mem) {}

MeasurementStop &MeasurementStop::getInstanceImpl(uint32_t registerBase, int mem) {
    static MeasurementStop instance(registerBase, mem);
    return instance;
}

MeasurementStop &MeasurementStop::getInstance() {
    return getInstanceImpl();
}

void MeasurementStop::init(uint32_t registerBase, int mem) {
    getInstanceImpl(registerBase, mem);
}

void MeasurementStop::checkStatus() {
    MeasurementStop &ref = MeasurementStop::getInstance();
    ref.m_measurementStopped = ref.getValue();
    if (ref.m_measurementStopped != 0) {
        ref.m_stopped = true;
    }
}

void MeasurementStop::reset() {
    MeasurementStop &ref = MeasurementStop::getInstance();
    ref.m_measurementStopped = 0;
    ref.m_stopped = false;
}

bool MeasurementStop::getStopped(uint8_t id) {
    MeasurementStop &ref = MeasurementStop::getInstance();
    return static_cast<bool>(ref.m_measurementStopped & (1 << id));
}

bool MeasurementStop::hasError() {
    MeasurementStop &ref = MeasurementStop::getInstance();
    return ref.Gpio::hasError();
}

} // gpio
} // components
} // simpleneutron
