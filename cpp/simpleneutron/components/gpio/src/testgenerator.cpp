#include <iostream>
#include <sys/mman.h>
#include <memorycontrol/memorycontrol.h>
#include <gpio/testgenerator.h>

namespace simpleneutron {
namespace components {
namespace gpio {

TestGenerator::TestGenerator(uint32_t registerBase, int mem)
 : Gpio(registerBase, mem) {
    setValue(0u); // turn off on init 
}

TestGenerator::~TestGenerator() {
    setValue(0u); // turn off on destroy
}

TestGenerator &TestGenerator::getInstanceImpl(uint32_t registerBase, int mem) {
    static TestGenerator instance(registerBase, mem);
    return instance;
}

TestGenerator &TestGenerator::getInstance() {
    return getInstanceImpl();
}

void TestGenerator::init(uint32_t registerBase, int mem) {
    getInstanceImpl(registerBase, mem);
}

// active bit and signal frequency are in the same register (29 bit)
// <      signal frequency      >|<active>
// <0000000000000000000000000000>|<  0   >
// so shift the frequency value left once
void TestGenerator::deactivate() {
    TestGenerator &ref = TestGenerator::getInstance();
    if (ref.mGeneratorState != false) {
        ref.mGeneratorState = false;
        ref.setValue(ref.mSignalFrequency << 1); // no need to set active bit since it's 0 by shift
    }
}

// active bit and signal frequency are in the same register (29 bit)
// <      signal frequency      >|<active>
// <0000000000000000000000000000>|<  0   >
// so shift the frequency value left once and set active bit
void TestGenerator::activate() {
    TestGenerator &ref = TestGenerator::getInstance();
    if (ref.mGeneratorState != true) {
        ref.mGeneratorState = true;
        ref.setValue((ref.mSignalFrequency << 1) | 1u);
    }
}

// active bit and signal frequency are in the same register (29 bit)
// <      signal frequency      >|<active>
// <0000000000000000000000000000>|<  0   >
// so shift the frequency value left once and set active bit
void TestGenerator::setSignalFrequency(uint32_t signalFrequency) {
    TestGenerator &ref = TestGenerator::getInstance();
    if (ref.mSignalFrequency != signalFrequency) {
        ref.mSignalFrequency = signalFrequency;
        ref.setValue((signalFrequency << 1) | static_cast<uint8_t>(ref.mGeneratorState));
    }
}

// signal count is in 2nd data register
void TestGenerator::setSignalCount(uint32_t signalCount) {
    TestGenerator &ref = TestGenerator::getInstance();
    if (ref.mSignalCount != signalCount) {
        ref.mSignalCount = signalCount;
        ref.setValue2(signalCount);
    }
}

bool TestGenerator::getStatus() {
    TestGenerator &ref = TestGenerator::getInstance();
    return ref.mGeneratorState;
}

bool TestGenerator::hasError() {
    TestGenerator &ref = TestGenerator::getInstance();
    return ref.Gpio::hasError();
}

} // gpio    
} // components
} // simpleneutron
