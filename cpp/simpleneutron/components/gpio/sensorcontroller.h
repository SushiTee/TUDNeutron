#pragma once

#include <cstdint>
#include <gpio/gpio.h>

namespace simpleneutron {
namespace components {
namespace gpio {

class SensorController : public Gpio {
public:
    SensorController() = delete;
    SensorController(const SensorController&) = delete;
    SensorController(uint32_t registerBase, int mem);
    void operator=(const SensorController&) = delete;

    void activateAll();
    void deactivateAll();
    void activateSpecific(uint8_t value);
    uint8_t getStatus();
};

} // gpio    
} // components
} // simpleneutron
