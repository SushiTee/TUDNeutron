#include <iostream>
#include <sys/mman.h>
#include <memorycontrol/memorycontrol.h>
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

enum DmaBit : Bit {
    S2MM_DMASR_HALTED = 0,
    S2MM_DMASR_IDLE = 1,
    S2MM_DMASR_INTERNAL_ERROR = 4,
    S2MM_DMASR_SLAVE_ERROR = 5,
    S2MM_DMASR_DECODER_ERROR = 6,
    S2MM_DMASR_COMPLETE_INTERRUPT = 12,
    S2MM_DMASR_DELAY_INTERRUPT = 13,
    S2MM_DMASR_INTERRUPT_ERROR = 14
};

Dma::Dma(uint32_t memoryBase, uint32_t registerBase, int mem)
 : MEMORY_BASE(memoryBase), REGISTER_BASE(registerBase), mMem(mem)
{
    mRegister = (uint32_t *)mmap(NULL, 128, PROT_READ | PROT_WRITE, MAP_SHARED, mMem, REGISTER_BASE);
    if (mRegister == MAP_FAILED) {
        std::cout << "could not map register" << std::endl;
        mHasError = true;
        return;
    }

    mMemoryMap = (uint32_t *)mmap(NULL, 0x2000000, PROT_READ | PROT_WRITE, MAP_SHARED, mMem, MEMORY_BASE);
    if (mMemoryMap == MAP_FAILED) {
        std::cout << "could not map memory map" << std::endl;
        mHasError = true;
    }
}

void Dma::enable() {
    MemoryControl::registerWrite(mRegister, DmaOffset::S2MM_CONTROL, 4);
}

bool Dma::hasError() const {
    return mHasError;
}

} // dma    
} // components
} // simpleneutron
