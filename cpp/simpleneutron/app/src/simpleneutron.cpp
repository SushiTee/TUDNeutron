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

   // init this first!
   simpleneutron::components::gpio::SensorController::init(GPIO_0, mem);
   if (simpleneutron::components::gpio::SensorController::hasError()) {
      std::cout << "Error creating Sensors Gpio object" << std::endl;
      return 1;
   }

   simpleneutron::components::gpio::WordLengthController::init(GPIO_1, mem);
   if (simpleneutron::components::gpio::WordLengthController::hasError()) {
      std::cout << "Error creating Sensors Gpio object" << std::endl;
      return 1;
   }

   auto dma = simpleneutron::components::dma::Dma(DMA_0_MEMORY, DMA_0_REGISTER, mem, DMA_0_UIO_DEVICE);
   if (dma.hasError()) {
      std::cout << "Error creating DMA object" << std::endl;
      return 1;
   }

   auto dma1 = simpleneutron::components::dma::Dma(DMA_1_MEMORY, DMA_1_REGISTER, mem, DMA_1_UIO_DEVICE);
   if (dma1.hasError()) {
      std::cout << "Error creating DMA1 object" << std::endl;
      return 1;
   }

   uint32_t wordLength = 16;
   simpleneutron::components::gpio::WordLengthController::setWordLength(wordLength);
   simpleneutron::components::gpio::SensorController::deactivateAll();
   simpleneutron::components::gpio::SensorController::activateSpecific(0b01010101u);

   dma.enable();
   dma1.enable();

   while(true) {
      // main loop: it does nothing!

      // test stuff to see if threads get terminated correctly
      usleep(1000000);
      dma.disable();
      usleep(1000000);
      dma1.disable();
      usleep(1000000);
      break;
   }

   return 0;
}
