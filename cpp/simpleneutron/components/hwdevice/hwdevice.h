#pragma once

#include <cstdint>

typedef struct {
    uint32_t mRegister;
    uint32_t mMemory;
    const char* mUioDevice;
} DMA_DEVICE;

constexpr uint32_t DMA_SIZE = 0x800000u; // total size / dma count / 4

constexpr DMA_DEVICE DMAS[8] = {
    {0x40400000u, 0x10000000u, "/dev/uio0"},
    {0x40410000u, 0x12000000u, "/dev/uio1"},
    {0x40420000u, 0x14000000u, "/dev/uio2"},
    {0x40430000u, 0x16000000u, "/dev/uio3"},
    {0x40440000u, 0x18000000u, "/dev/uio4"},
    {0x40450000u, 0x1a000000u, "/dev/uio5"},
    {0x40460000u, 0x1c000000u, "/dev/uio6"},
    {0x40470000u, 0x1e000000u, "/dev/uio7"}
};

constexpr uint32_t GPIO_0 = 0x41200000u;
constexpr uint32_t GPIO_1 = 0x41210000u;

constexpr uint16_t DEFAULT_WORD_LENGTH = 0x20u;
