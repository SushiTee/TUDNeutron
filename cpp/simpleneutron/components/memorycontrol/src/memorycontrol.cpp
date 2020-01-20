#include <memorycontrol/memorycontrol.h>

namespace simpleneutron {
namespace components {
namespace memorycontrol {

void MemoryControl::registerWrite(uint32_t *file, Offset offset, uint32_t value) {
    file[offset>>2u] = value;
}

uint32_t MemoryControl::registerRead(uint32_t *file, Offset offset) {
    return file[offset>>2u];
}

void MemoryControl::registerSetBit(uint32_t *file, Offset offset, Bit bit, uint8_t value) {
    if (value) {
        file[offset>>2u] |= (1u << bit);
    } else {
        file[offset>>2u] &= ~(1u << bit);
    }
}

uint8_t MemoryControl::registerGetBit(uint32_t *file, Offset offset, Bit bit) {
    return (file[offset>>2u] >> bit) & 1u;
}

uint32_t MemoryControl::memoryRead(uint32_t *file, uint32_t offset) {
    return file[offset>>2u];
}

} // memorycontrol    
} // components
} // simpleneutron
