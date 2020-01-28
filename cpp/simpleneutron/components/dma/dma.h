#pragma once

#include <atomic>
#include <csignal>
#include <memory>
#include <thread>
#include <cstdint>
#include <hwdevice/hwdevice.h>
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
    const uint8_t ID;
    const uint32_t MEMORY_BASE;
    const uint32_t REGISTER_BASE;

    void registerEnable();
    void setQuit(bool quit);
    uint32_t writeToReadPointerDifference();
    uint32_t readToWritePointerDifference();

    int mUio;
    uint32_t *mRegister = 0;
    uint32_t *mMemoryMap = 0;
    uint32_t mSize = DMA_SIZE;
    uint32_t mReadAddress = 0;
    uint32_t mWriteAddress = 0;

    bool mHasError = false;
    bool mEnabled = false;

    std::unique_ptr<std::thread> mThread = nullptr;

    std::atomic<uint16_t> mWordLength;
    std::atomic<uint32_t> mInterruptCount;
    std::sig_atomic_t mQuit = false;

public:
    Dma() = delete;
    Dma(const Dma&) = delete;
    Dma(Dma&& other);
    Dma(uint8_t id, int mem);
    ~Dma();
    Dma& operator=(const Dma&) = delete;
    Dma& operator=(Dma&&) = delete;

    bool empty();
    bool full();

    inline uint8_t getID();

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
