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
#include <gpio/measurementtimer.h>
#include <gpio/measurementstop.h>
#include <gpio/switches.h>
#include <gpio/triggerinput.h>
#include <gpio/testgenerator.h>
#include <gpio/psled.h>

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
      LogErr << "Error creating WordLength Gpio object" << std::endl;
      return 1;
   }

   simpleneutron::components::gpio::Switches::init(GPIO_2, mem);
   if (simpleneutron::components::gpio::SensorController::hasError()) {
      LogErr << "Error creating Switches Gpio object" << std::endl;
      return 1;
   }

   simpleneutron::components::gpio::TestGenerator::init(GPIO_3, mem);
   if (simpleneutron::components::gpio::TestGenerator::hasError()) {
      LogErr << "Error creating TestGenerator Gpio object" << std::endl;
      return 1;
   }

   simpleneutron::components::gpio::TriggerInput::init(GPIO_4, mem);
   if (simpleneutron::components::gpio::TriggerInput::hasError()) {
      LogErr << "Error creating TriggerInput Gpio object" << std::endl;
      return 1;
   }

   simpleneutron::components::gpio::MeasurementTimer::init(GPIO_5, mem);
   if (simpleneutron::components::gpio::MeasurementTimer::hasError()) {
      LogErr << "Error creating MeasurementTimer Gpio object" << std::endl;
      return 1;
   }

   simpleneutron::components::gpio::MeasurementStop::init(GPIO_6, mem);
   if (simpleneutron::components::gpio::MeasurementStop::hasError()) {
      LogErr << "Error creating MeasurementStop Gpio object" << std::endl;
      return 1;
   }

   uint32_t wordLength = 16;
   simpleneutron::components::gpio::WordLengthController::setWordLength(wordLength);

   auto controller = simpleneutron::components::controller::Controller(mem);
   if (simpleneutron::components::gpio::PsLed::hasError()) {
      LogErr << "Error activating PS LED" << std::endl;
      return 1;
   }
   controller.run();

   return 0;
}
