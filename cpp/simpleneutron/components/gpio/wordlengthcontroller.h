#pragma once

#include <atomic>
#include <cstdint>
#include <hwdevice/hwdevice.h>
#include <gpio/gpio.h>

namespace simpleneutron {
namespace components {
namespace gpio {

class WordLengthController : public Gpio {
    WordLengthController(uint32_t registerBase, int mem);
    ~WordLengthController();
    static WordLengthController &getInstanceImpl(uint32_t registerBase = 0, int mem = 0);
    static WordLengthController &getInstance();

    uint16_t mWordLength = DEFAULT_WORD_LENGTH;
public:
    WordLengthController() = delete;
    WordLengthController(const WordLengthController&) = delete;
    void operator=(const WordLengthController&) = delete;

    static void init(uint32_t registerBase, int mem);
    static void setWordLength(uint32_t length);
    static uint32_t getWordLength();
    static bool hasError();
};

} // gpio    
} // components
} // simpleneutron
