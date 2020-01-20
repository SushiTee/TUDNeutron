#include <iostream>
#include <memory>
#include <fcntl.h>
#include <sys/mman.h>
#include <dma/dma.h>
#include <hwdevice/hwdevice.h>
#include <gpio/sensorcontroller.h>

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

   if (sensors.getStatus()) {
      sensors.deactivateAll();
   } else {
      sensors.activateAll();
   }

   return 0;
}
