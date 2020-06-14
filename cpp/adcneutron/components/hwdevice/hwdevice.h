#pragma once

#include <cstdint>

typedef struct {
    uint32_t mRegister;
    uint32_t mMemory;
    const char* mDmaDevice;
    const char* mUioDevice;
} DMA_DEVICE;

typedef struct {
    const char* mRegisterBit;
    const char* mGpioValue;
    const char* mGpioDirection;
    const char* mGpioExport;
    const char* mGpioUnexport;
} LED_GPIO;

constexpr uint32_t DMA_SIZE = 0x4000000u; // total size / 4

constexpr DMA_DEVICE DMA = {0x40400000u, 0x10000000u, "/dev/udmabuf0", "/dev/uio0"};

constexpr const char* FIFO_INTERRUPT = "/dev/uio1";

constexpr uint32_t GPIO_0 = 0x41200000u; // dma enable (out)
constexpr uint32_t GPIO_1 = 0x41210000u; // word length (out)
constexpr uint32_t GPIO_2 = 0x41230000u; // switch state (in)
constexpr uint32_t GPIO_3 = 0x41220000u; // enable trigger input (JB1 on zedboard) (out)

constexpr uint32_t DEFAULT_WORD_LENGTH = 0x10000u;

constexpr LED_GPIO PS_LED = {
    "880",
    "/sys/class/gpio/gpio880/value",
    "/sys/class/gpio/gpio880/direction",
    "/sys/class/gpio/export",
    "/sys/class/gpio/unexport"
};
