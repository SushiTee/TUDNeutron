#pragma once

namespace simpleneutron {
namespace components {
namespace dma {

enum class Offset {
    S2MM_CONTROL = 0x30,
    S2MM_STATUS = 0x34,
    S2MM_DESTINATION = 0x48,
    S2MM_LENGTH = 0x58
};

class Dma {
    const uint32_t MEMORY_BASE;
    const uint32_t REGISTER_BASE;

    const uint32_t S2MM_CONTROL = REGISTER_BASE + static_cast<uint32_t>(Offset::S2MM_CONTROL);
    const uint32_t S2MM_STATUS = REGISTER_BASE + static_cast<uint32_t>(Offset::S2MM_STATUS);
    const uint32_t S2MM_DESTINATION = REGISTER_BASE + static_cast<uint32_t>(Offset::S2MM_DESTINATION);
    const uint32_t S2MM_LENGTH = REGISTER_BASE + static_cast<uint32_t>(Offset::S2MM_LENGTH);

public:
    Dma() = delete;
    Dma(const Dma&) = delete;
    Dma(uint32_t memoryBase, uint32_t registerBase);
    void operator=(const Dma&) = delete;

    void test() const;
};

} // dma    
} // components
} // simpleneutron
