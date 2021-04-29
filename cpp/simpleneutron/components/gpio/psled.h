#pragma once

#include <cstdint>
#include <gpio/gpio.h>

namespace simpleneutron {
namespace components {
namespace gpio {

class PsLed {
    PsLed();
    PsLed(PsLed &&) = delete;
    PsLed &operator=(PsLed &&) = delete;
    ~PsLed();

    int mGpio;
    uint16_t mGpioNumber = 0;
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
} // simpleneutron
