#include <iostream>
#include <memory>
#include <fcntl.h>
#include <sys/mman.h>
#include <logger/logger.h>
#include <controller/controller.h>
#include <dma/dma.h>
#include <hwdevice/hwdevice.h>
#include <gpio/sensorcontroller.h>
#include <gpio/wordlengthcontroller.h>

int main(int argc, char *argv[]) {
   int mem = open("/dev/mem", O_RDWR | O_SYNC);
   if (mem == -1) {
      LogErr << "Error opening /dev/mem" << std::endl;
      return 1;
   }

   // init this first!
   simpleneutron::components::gpio::SensorController::init(GPIO_0, mem);
   if (simpleneutron::components::gpio::SensorController::hasError()) {
      LogErr << "Error creating Sensors Gpio object" << std::endl;
      return 1;
   }

   simpleneutron::components::gpio::WordLengthController::init(GPIO_1, mem);
   if (simpleneutron::components::gpio::WordLengthController::hasError()) {
      LogErr << "Error creating Sensors Gpio object" << std::endl;
      return 1;
   }

   uint32_t wordLength = 16;
   simpleneutron::components::gpio::WordLengthController::setWordLength(wordLength);

   auto dma = simpleneutron::components::dma::Dma(0, mem);
   if (dma.hasError()) {
      LogErr << "Error creating DMA object" << std::endl;
      return 1;
   }

   auto dma1 = simpleneutron::components::dma::Dma(1, mem);
   if (dma1.hasError()) {
      LogErr << "Error creating DMA1 object" << std::endl;
      return 1;
   }

   simpleneutron::components::gpio::SensorController::activateSpecific(0b01010101u);

   dma.enable();
   dma1.enable();

   auto controller = simpleneutron::components::controller::Controller();
   controller.run();

   return 0;
}
