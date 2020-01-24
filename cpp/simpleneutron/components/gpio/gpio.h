#pragma once

#include <cstdint>

namespace simpleneutron {
namespace components {
namespace gpio {

class Gpio {
    const uint32_t REGISTER_BASE;

    int mMem;
    uint32_t *mRegister = 0;

    bool mHasError = false;

protected:
    void setValue(uint32_t value);
    uint32_t getValue();
    bool hasError() const;

public:
    Gpio() = delete;
    Gpio(const Gpio&) = delete;
    Gpio(uint32_t registerBase, int mem);
    void operator=(const Gpio&) = delete;
};

} // gpio    
} // components
} // simpleneutron
