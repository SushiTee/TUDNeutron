#pragma once

#include <cstdint>

const uint32_t DMA_0_REGISTER = 0x40400000;
const uint32_t DMA_1_REGISTER = 0x40410000;
const uint32_t DMA_2_REGISTER = 0x40420000;
const uint32_t DMA_3_REGISTER = 0x40430000;
const uint32_t DMA_4_REGISTER = 0x40440000;
const uint32_t DMA_5_REGISTER = 0x40450000;
const uint32_t DMA_6_REGISTER = 0x40460000;
const uint32_t DMA_7_REGISTER = 0x40470000;

const uint32_t DMA_0_MEMORY = 0x10000000;
const uint32_t DMA_1_MEMORY = 0x12000000;
const uint32_t DMA_2_MEMORY = 0x14000000;
const uint32_t DMA_3_MEMORY = 0x16000000;
const uint32_t DMA_4_MEMORY = 0x18000000;
const uint32_t DMA_5_MEMORY = 0x1a000000;
const uint32_t DMA_6_MEMORY = 0x1c000000;
const uint32_t DMA_7_MEMORY = 0x1e000000;

const std::string DMA_0_UIO_DEVICE = "/dev/uio0";
const std::string DMA_1_UIO_DEVICE = "/dev/uio1";
const std::string DMA_2_UIO_DEVICE = "/dev/uio2";
const std::string DMA_3_UIO_DEVICE = "/dev/uio3";
const std::string DMA_4_UIO_DEVICE = "/dev/uio4";
const std::string DMA_5_UIO_DEVICE = "/dev/uio5";
const std::string DMA_6_UIO_DEVICE = "/dev/uio6";
const std::string DMA_7_UIO_DEVICE = "/dev/uio7";

const uint32_t GPIO_0 = 0x41200000;
const uint32_t GPIO_1 = 0x41210000;

const uint16_t DEFAULT_WORD_LENGTH = 0x20u;
