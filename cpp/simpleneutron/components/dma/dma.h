#pragma once

#include <cstdint>
#include <memorycontrol/memorycontrol.h>

namespace simpleneutron {
namespace components {
namespace dma {

enum StatusBit : memorycontrol::Bit {
    STATUS_HALTED = 0,
    STATUS_IDLE = 1,
    STATUS_INTERNAL_ERROR = 4,
    STATUS_SLAVE_ERROR = 5,
    STATUS_DECODER_ERROR = 6,
    STATUS_COMPLETE_INTERRUPT = 12,
    STATUS_DELAY_INTERRUPT = 13,
    STATUS_INTERRUPT_ERROR = 14
};

class Dma {
    const uint32_t MEMORY_BASE;
    const uint32_t REGISTER_BASE;

    int mMem;
    int mUio;
    uint32_t *mRegister = 0;
    uint32_t *mMemoryMap = 0;

    bool mHasError = false;

    std::string mDevice;

    uint32_t mInterruptCount = 0;
public:
    Dma() = delete;
    Dma(const Dma&) = delete;
    Dma(uint32_t memoryBase, uint32_t registerBase, int mem, const std::string &device);
    ~Dma();
    void operator=(const Dma&) = delete;

    void reset();
    void enableInterrupt();
    void waitForData();
    void enable();
    void disable();
    void setDestinationAddress(uint32_t address);
    void setWordLength(uint32_t length);
    uint32_t getStatus();
    uint32_t readMemory(uint32_t offset);
    bool hasStatusError();
    bool hasStatusError(uint32_t status);
    bool hasError() const;
};

} // dma    
} // components
} // simpleneutron
