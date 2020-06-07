#pragma once

#include <cstdint>
#include <gpio/gpio.h>

namespace adcneutron {
namespace components {
namespace gpio {

class Switches : public Gpio {
    Switches(uint32_t registerBase, int mem);
    ~Switches() = default;
    static Switches &getInstanceImpl(uint32_t registerBase = 0, int mem = 0);
    static Switches &getInstance();
public:
    Switches() = delete;
    Switches(const Switches&) = delete;
    void operator=(const Switches&) = delete;

    static void init(uint32_t registerBase, int mem);
    static uint8_t getStatus();
    static bool hasError();
};

} // gpio    
} // components
} // adcneutron
