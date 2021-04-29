#pragma once

#include <cstdint>
#include <hwdevice/hwdevice.h>
#include <gpio/gpio.h>

namespace simpleneutron {
namespace components {
namespace gpio {

class MeasurementTimer : public Gpio {
    MeasurementTimer(uint32_t registerBase, int mem);
    MeasurementTimer(MeasurementTimer &&) = delete;
    MeasurementTimer &operator=(MeasurementTimer &&) = delete;
    ~MeasurementTimer();
    static MeasurementTimer &getInstanceImpl(uint32_t registerBase = 0, int mem = 0);
    static MeasurementTimer &getInstance();

    uint32_t mTime = 0;
public:
    MeasurementTimer() = delete;
    MeasurementTimer(const MeasurementTimer&) = delete;
    void operator=(const MeasurementTimer&) = delete;

    static void init(uint32_t registerBase, int mem);
    static void setTime(uint32_t time);
    static uint32_t getTime();
    static void stopMeasurement();
    static void resetStopMeasurement();
    static bool hasError();
};

} // gpio
} // components
} // simpleneutron
