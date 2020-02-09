#include <iostream>
#include <sys/mman.h>
#include <memorycontrol/memorycontrol.h>
#include <gpio/triggerinput.h>

namespace simpleneutron {
namespace components {
namespace gpio {

TriggerInput::TriggerInput(uint32_t registerBase, int mem)
 : Gpio(registerBase, mem) {
    setValue(0u); // turn off on init 
}

TriggerInput::~TriggerInput() {
    setValue(0u); // turn off on destroy
}

TriggerInput &TriggerInput::getInstanceImpl(uint32_t registerBase, int mem) {
    static TriggerInput instance(registerBase, mem);
    return instance;
}

TriggerInput &TriggerInput::getInstance() {
    return getInstanceImpl();
}

void TriggerInput::init(uint32_t registerBase, int mem) {
    getInstanceImpl(registerBase, mem);
}

void TriggerInput::deactivate() {
    TriggerInput &ref = TriggerInput::getInstance();
    if (ref.mTriggerState != false) {
        ref.mTriggerState = false;
        ref.setValue(0u);
    }
}

void TriggerInput::activate() {
    TriggerInput &ref = TriggerInput::getInstance();
    if (ref.mTriggerState != true) {
        ref.mTriggerState = true;
        ref.setValue(0xffu);
    }
}

bool TriggerInput::getStatus() {
    TriggerInput &ref = TriggerInput::getInstance();
    return ref.mTriggerState;
}

bool TriggerInput::hasError() {
    TriggerInput &ref = TriggerInput::getInstance();
    return ref.Gpio::hasError();
}

} // gpio    
} // components
} // simpleneutron
