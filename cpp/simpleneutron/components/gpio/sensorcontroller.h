#pragma once

#include <cstdint>
#include <gpio/gpio.h>

namespace simpleneutron {
namespace components {
namespace gpio {

class SensorController : public Gpio {
    SensorController(uint32_t registerBase, int mem);
    SensorController(SensorController &&) = delete;
    SensorController &operator=(SensorController &&) = delete;
    ~SensorController();
    static SensorController &getInstanceImpl(uint32_t registerBase = 0, int mem = 0);
    static SensorController &getInstance();

    uint8_t mSensorState = 0; // every bit is one Sensor
public:
    SensorController() = delete;
    SensorController(const SensorController&) = delete;
    void operator=(const SensorController&) = delete;

    static void init(uint32_t registerBase, int mem);
    static void deactivateAll();
    static void activateSpecific(uint8_t value);
    static uint8_t getStatus();
    static bool hasError();
};

} // gpio
} // components
} // simpleneutron
