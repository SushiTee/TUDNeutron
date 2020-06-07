#pragma once

#include <cstdint>

namespace adcneutron {
namespace components {
namespace gpio {

class Gpio {
    const uint32_t REGISTER_BASE;

    int mMem;
    uint32_t *mRegister = 0;

    bool mHasError = false;

protected:
    void setValue(uint32_t value); // 1st data register
    uint32_t getValue(); // 1st data register
    void setValue2(uint32_t value); // 2nd data register
    uint32_t getValue2(); // 2nd data register
    bool hasError() const;

public:
    Gpio() = delete;
    Gpio(const Gpio&) = delete;
    Gpio(uint32_t registerBase, int mem);
    void operator=(const Gpio&) = delete;
};

} // gpio    
} // components
} // adcneutron
