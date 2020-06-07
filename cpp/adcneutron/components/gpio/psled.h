#pragma once

#include <cstdint>
#include <gpio/gpio.h>

namespace adcneutron {
namespace components {
namespace gpio {

class PsLed {
    PsLed();
    ~PsLed();

    int mGpio;
    bool mHasError = false;
    bool hasErrorImpl();

public:
    PsLed(const PsLed&) = delete;
    void operator=(const PsLed&) = delete;

    static PsLed &getInstance();

    static bool hasError();
};

} // gpio    
} // components
} // adcneutron
