#pragma once

#include <cstdint>
#include <gpio/gpio.h>

namespace adcneutron {
namespace components {
namespace gpio {

class TriggerInput : public Gpio {
    TriggerInput(uint32_t registerBase, int mem);
    ~TriggerInput();
    static TriggerInput &getInstanceImpl(uint32_t registerBase = 0, int mem = 0);
    static TriggerInput &getInstance();

    bool mTriggerState = false; // every bit is one Sensor
public:
    TriggerInput() = delete;
    TriggerInput(const TriggerInput&) = delete;
    void operator=(const TriggerInput&) = delete;

    static void init(uint32_t registerBase, int mem);
    static void activate();
    static void deactivate();
    static bool getStatus();
    static bool hasError();
};

} // gpio    
} // components
} // adcneutron
