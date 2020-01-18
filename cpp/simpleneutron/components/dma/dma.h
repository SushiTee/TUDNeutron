#pragma once

#include <cstdint>

namespace simpleneutron {
namespace components {
namespace dma {

class Dma {
    const uint32_t MEMORY_BASE;
    const uint32_t REGISTER_BASE;

    int mMem;
    uint32_t *mRegister = 0;
    uint32_t *mMemoryMap = 0;

    bool mHasError = false;
public:
    Dma() = delete;
    Dma(const Dma&) = delete;
    Dma(uint32_t memoryBase, uint32_t registerBase, int mem);
    void operator=(const Dma&) = delete;

    void enable();
    bool hasError() const;
};

} // dma    
} // components
} // simpleneutron
