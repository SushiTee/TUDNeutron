#include <iostream>
#include <sstream>
#include <sys/mman.h>
#include <dma/dma.h>

namespace simpleneutron {
namespace components {
namespace dma {

using namespace memorycontrol;

enum DmaOffset : Offset {
    S2MM_CONTROL = 0x30,
    S2MM_STATUS = 0x34,
    S2MM_DESTINATION = 0x48,
    S2MM_LENGTH = 0x58
};

enum ControlBit : Bit {
    CONTROL_RUN = 0,
    CONTROL_RESET = 2,
    CONTROL_COMPLETE_INTERRUPT = 12,
    CONTROL_DELAY_INTERRUPT = 13,
    CONTROL_ERROR_INTERRUPT = 14
};

Dma::Dma(uint32_t memoryBase, uint32_t registerBase, int mem)
 : MEMORY_BASE(memoryBase), REGISTER_BASE(registerBase), mMem(mem)
{
    mRegister = (uint32_t *)mmap(NULL, 128, PROT_READ | PROT_WRITE, MAP_SHARED, mMem, REGISTER_BASE);
    if (mRegister == MAP_FAILED) {
        std::cout << "Dma: could not map register" << std::endl;
        mHasError = true;
        return;
    }

    mMemoryMap = (uint32_t *)mmap(NULL, 0x2000000, PROT_READ | PROT_WRITE, MAP_SHARED, mMem, MEMORY_BASE);
    if (mMemoryMap == MAP_FAILED) {
        std::cout << "Dma: could not map memory map" << std::endl;
        mHasError = true;
    }
}

void Dma::reset() {
    MemoryControl::registerSetBit(mRegister, DmaOffset::S2MM_CONTROL, CONTROL_RESET, 1);
}

void Dma::enable() {
    uint32_t value = (1 << CONTROL_RUN) | (1 << CONTROL_COMPLETE_INTERRUPT) | (1 << CONTROL_DELAY_INTERRUPT) | (1 << CONTROL_ERROR_INTERRUPT);
    MemoryControl::registerWrite(mRegister, DmaOffset::S2MM_CONTROL, value);
}

void Dma::disable() {
    MemoryControl::registerSetBit(mRegister, DmaOffset::S2MM_CONTROL, CONTROL_RUN, 0);
}

void Dma::setDestinationAddress(uint32_t offset) {
    MemoryControl::registerWrite(mRegister, DmaOffset::S2MM_DESTINATION, MEMORY_BASE + offset * 4);
}

void Dma::setWordLength(uint32_t length) {
    MemoryControl::registerWrite(mRegister, DmaOffset::S2MM_LENGTH, length * 4 * 2); // packets are always 4 byte
}

uint32_t Dma::getStatus() {
    return MemoryControl::registerRead(mRegister, DmaOffset::S2MM_STATUS);
}

uint32_t Dma::readMemory(uint32_t offset) {
    return MemoryControl::memoryRead(mMemoryMap, offset * 4);
}

bool Dma::hasStatusError() {
    uint32_t status = getStatus();
    return hasStatusError(status);
}

bool Dma::hasStatusError(uint32_t status) {
    bool hasError = false;
    std::stringstream ss;
    if (status & (1 << STATUS_HALTED)) ss << "Status: (halted)";
    if (status & (1 << STATUS_IDLE)) ss << "|(idle)";
    if (status & (1 << STATUS_INTERNAL_ERROR)) {
        ss << "|(internal error)";
        hasError = true;
    }
    if (status & (1 << STATUS_SLAVE_ERROR)) {
        ss << "|(slave error)";
        hasError = true;
    }
    if (status & (1 << STATUS_DECODER_ERROR)) {
        ss << "|(decoder error)";
        hasError = true;
    }
    if (status & (1 << STATUS_COMPLETE_INTERRUPT)) ss << "|(interrupt completed)";
    if (status & (1 << STATUS_DELAY_INTERRUPT)) ss << "|(delay interrupt)";
    if (status & (1 << STATUS_INTERRUPT_ERROR)) {
        ss << "|(interrupt error)";
        hasError = true;
    }
    if (!ss.str().empty()) {
        std::cout << ss.str() << std::endl;
    }
    return hasError;
}

bool Dma::hasError() const {
    return mHasError;
}

} // dma    
} // components
} // simpleneutron
