#pragma once

#include <cstdint>
#include <gpio/gpio.h>

namespace simpleneutron {
namespace components {
namespace gpio {

class WordLengthController : public Gpio {
public:
    WordLengthController() = delete;
    WordLengthController(const WordLengthController&) = delete;
    WordLengthController(uint32_t registerBase, int mem);
    void operator=(const WordLengthController&) = delete;

    void setWordLength(uint32_t length);
    uint32_t getWordLength();
};

} // gpio    
} // components
} // simpleneutron
