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

void TestGenerator::deactivate() {
    TestGenerator &ref = TestGenerator::getInstance();
    if (ref.mGeneratorState != false) {
        ref.mGeneratorState = false;
        uint8_t val = static_cast<uint8_t>(ref.getValue());
        val &= ~(1u);
        ref.setValue(val);
    }
}

void TestGenerator::activate() {
    TestGenerator &ref = TestGenerator::getInstance();
    if (ref.mGeneratorState != true) {
        ref.mGeneratorState = true;
        uint8_t val = static_cast<uint8_t>(ref.getValue());
        val |= 1u;
        ref.setValue(val);
    }
}

void TestGenerator::setSignalCount(uint8_t signalCount) {
    signalCount = signalCount << 1;
    TestGenerator &ref = TestGenerator::getInstance();
    uint8_t val = static_cast<uint8_t>(ref.getValue()) & 1u; // get just enabled bit
    val = signalCount | val;
    ref.setValue(val);
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
