#pragma once

#include <cstdint>

namespace simpleneutron {
namespace components {
namespace memorycontrol {

typedef uint8_t Offset;
typedef uint8_t Bit;

class MemoryControl {
    MemoryControl() = delete; // we don't want any instances!

public:
    static void registerWrite(uint32_t *file, Offset offset, uint32_t value);
    static uint32_t registerRead(uint32_t *file, Offset offset);
    static void registerSetBit(uint32_t *file, Offset offset, Bit bit, uint8_t value);
    static uint8_t registerGetBit(uint32_t *file, Offset offset, Bit bit);
    static uint8_t memoryRead(uint32_t *file, uint32_t offset);
};

} // memorycontrol    
} // components
} // simpleneutron
