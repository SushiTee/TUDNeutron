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

   simpleneutron::components::gpio::SensorController::activateSpecific(0b01010101u);

   auto controller = simpleneutron::components::controller::Controller(mem);
   controller.run();

   return 0;
}
