#pragma once

#include <cstdint>
#include <gpio/gpio.h>

namespace simpleneutron {
namespace components {
namespace gpio {

class MeasurementStop : public Gpio {
    MeasurementStop(uint32_t registerBase, int mem);
    MeasurementStop(MeasurementStop &&) = delete;
    MeasurementStop &operator=(MeasurementStop &&) = delete;
    ~MeasurementStop() = default;
    static MeasurementStop &getInstanceImpl(uint32_t registerBase = 0, int mem = 0);
    static MeasurementStop &getInstance();

    uint8_t m_measurementStopped = 0;
    bool m_stopped = false;
public:
    MeasurementStop() = delete;
    MeasurementStop(const MeasurementStop&) = delete;
    void operator=(const MeasurementStop&) = delete;

    static void init(uint32_t registerBase, int mem);
    static void checkStatus();
    static bool getStopped(uint8_t id);
    static void reset();
    static bool hasError();
};

} // gpio
} // components
} // simpleneutron
