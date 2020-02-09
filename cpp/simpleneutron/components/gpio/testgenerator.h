#pragma once

#include <cstdint>
#include <gpio/gpio.h>

namespace simpleneutron {
namespace components {
namespace gpio {

class TestGenerator : public Gpio {
    TestGenerator(uint32_t registerBase, int mem);
    ~TestGenerator();
    static TestGenerator &getInstanceImpl(uint32_t registerBase = 0, int mem = 0);
    static TestGenerator &getInstance();

    bool mGeneratorState = false; // every bit is one Sensor
public:
    TestGenerator() = delete;
    TestGenerator(const TestGenerator&) = delete;
    void operator=(const TestGenerator&) = delete;

    static void init(uint32_t registerBase, int mem);
    static void activate();
    static void deactivate();
    static void setSignalCount(uint8_t signalCount);
    static bool getStatus();
    static bool hasError();
};

} // gpio    
} // components
} // simpleneutron
