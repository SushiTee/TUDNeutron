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
#include <gpio/switches.h>
#include <gpio/triggerinput.h>
#include <gpio/psled.h>

int main(int argc, char *argv[]) {
   int mem = open("/dev/mem", O_RDWR | O_SYNC);
   if (mem == -1) {
      LogErr << "Error opening /dev/mem" << std::endl;
      return 1;
   }

   // init this first!
   adcneutron::components::gpio::SensorController::init(GPIO_0, mem);
   if (adcneutron::components::gpio::SensorController::hasError()) {
      LogErr << "Error creating Sensors Gpio object" << std::endl;
      return 1;
   }

   adcneutron::components::gpio::WordLengthController::init(GPIO_1, mem);
   if (adcneutron::components::gpio::WordLengthController::hasError()) {
      LogErr << "Error creating WordLength Gpio object" << std::endl;
      return 1;
   }

   adcneutron::components::gpio::Switches::init(GPIO_2, mem);
   if (adcneutron::components::gpio::SensorController::hasError()) {
      LogErr << "Error creating Switches Gpio object" << std::endl;
      return 1;
   }

   adcneutron::components::gpio::TriggerInput::init(GPIO_3, mem);
   if (adcneutron::components::gpio::TriggerInput::hasError()) {
      LogErr << "Error creating TriggerInput Gpio object" << std::endl;
      return 1;
   }

   uint32_t wordLength = DEFAULT_WORD_LENGTH;
   adcneutron::components::gpio::WordLengthController::setWordLength(wordLength);

   auto controller = adcneutron::components::controller::Controller(mem);
   if (adcneutron::components::gpio::PsLed::hasError()) {
      LogErr << "Error activating PS LED" << std::endl;
      return 1;
   }
   controller.run();

   return 0;
}
