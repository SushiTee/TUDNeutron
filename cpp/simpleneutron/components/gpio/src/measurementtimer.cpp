#include <iostream>
#include <sys/mman.h>
#include <memorycontrol/memorycontrol.h>
#include <gpio/measurementtimer.h>

namespace simpleneutron {
namespace components {
namespace gpio {

MeasurementTimer::MeasurementTimer(uint32_t registerBase, int mem)
 : Gpio(registerBase, mem) {
    mTime = getValue();
 }

MeasurementTimer::~MeasurementTimer() {}

MeasurementTimer &MeasurementTimer::getInstanceImpl(uint32_t registerBase, int mem) {
    static MeasurementTimer instance(registerBase, mem);
    return instance;
}
MeasurementTimer &MeasurementTimer::getInstance() {
    return getInstanceImpl();
}

void MeasurementTimer::init(uint32_t registerBase, int mem) {
    getInstanceImpl(registerBase, mem);
}

void MeasurementTimer::setTime(uint32_t time) {
    MeasurementTimer &ref = MeasurementTimer::getInstance();
    if (time != ref.mTime) {
        ref.mTime = time;
        ref.setValue(time);
    }
}

uint32_t MeasurementTimer::getTime() {
    MeasurementTimer &ref = MeasurementTimer::getInstance();
    return ref.mTime;
}

void MeasurementTimer::stopMeasurement() {
    MeasurementTimer &ref = MeasurementTimer::getInstance();
    ref.setValue(1u);
}

void MeasurementTimer::resetStopMeasurement() {
    MeasurementTimer &ref = MeasurementTimer::getInstance();
    ref.setValue(ref.mTime);
}

bool MeasurementTimer::hasError() {
    MeasurementTimer &ref = MeasurementTimer::getInstance();
    return ref.Gpio::hasError();
}

} // gpio
} // components
} // simpleneutron
