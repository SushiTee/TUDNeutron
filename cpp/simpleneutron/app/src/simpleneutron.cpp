#include <iostream>
#include <memory>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <dma/dma.h>
#include <hwdevice/hwdevice.h>
#include <gpio/sensorcontroller.h>
#include <gpio/wordlengthcontroller.h>

int main(int argc, char *argv[]) {
   int mem = open("/dev/mem", O_RDWR | O_SYNC);
   if (mem == -1) {
      std::cout << "Error opening /dev/mem" << std::endl;
      return 1;
   }

   auto dma = simpleneutron::components::dma::Dma(DMA_0_MEMORY, DMA_0_REGISTER, mem);
   if (dma.hasError()) {
      std::cout << "Error creating DMA object" << std::endl;
      return 1;
   }

   auto sensors = simpleneutron::components::gpio::SensorController(GPIO_0, mem);
   if (sensors.hasError()) {
      std::cout << "Error creating Sensors Gpio object" << std::endl;
      return 1;
   }

   auto wordLengthController = simpleneutron::components::gpio::WordLengthController(GPIO_1, mem);
   if (sensors.hasError()) {
      std::cout << "Error creating Sensors Gpio object" << std::endl;
      return 1;
   }

   auto lRegister = (uint32_t *)mmap(NULL, 128, PROT_READ | PROT_WRITE, MAP_SHARED, mem, DMA_0_REGISTER);
    if (lRegister == MAP_FAILED) {
        std::cout << "Length Register: could not map register" << std::endl;
        return 1;
    }

   uint32_t wordLength = 1;
   wordLengthController.setWordLength(wordLength);
   sensors.deactivateAll();
   sensors.activateSpecific(0b01010101u);

   dma.reset();
   if (dma.hasStatusError()) {
      std::cout << "Status error" << std::endl;
   }
   dma.enable();
   if (dma.hasStatusError()) {
      std::cout << "Status error" << std::endl;
   }
   dma.setDestinationAddress(0);
   if (dma.hasStatusError()) {
      std::cout << "Status error" << std::endl;
   }
   dma.setWordLength(wordLength);
   if (dma.hasStatusError()) {
      std::cout << "Status error" << std::endl;
   }

   uint32_t i = 0;
   while(true) {
      uint32_t status = dma.getStatus();
      
      if (dma.hasStatusError(status)) {
         break;
      }
      if (status & ((1 << simpleneutron::components::dma::StatusBit::STATUS_HALTED) | (1 << simpleneutron::components::dma::StatusBit::STATUS_COMPLETE_INTERRUPT) | (1 << simpleneutron::components::dma::StatusBit::STATUS_IDLE))) {
         std::cout << std::hex << dma.readMemory(i++) << " status: " << std::dec << simpleneutron::components::memorycontrol::MemoryControl::registerRead(lRegister, 0x58u) << std::endl;
         //dma.reset();
         //dma.enable();
         if (i >= 0x800000u) {
            i = 0;
         }
         dma.setDestinationAddress(i);
         dma.setWordLength(wordLength);
      }
      usleep(1);
   }

   return 0;
}
