#include <iostream>
#include <memory>
#include <chrono>
#include <fcntl.h>
#include <sys/mman.h>
#include <dma/dma.h>
#include <hwdevice/hwdevice.h>
#include <gpio/sensorcontroller.h>
#include <gpio/wordlengthcontroller.h>

// to override SIGINT so the proecss is quit correctly and not just stopped
constexpr int quitSignal = SIGINT;
bool quit = false;

int main(int argc, char *argv[]) {
   using namespace std::chrono_literals;
   // register signal handler
    std::signal(quitSignal, [](int) {
        // use global var here
        quit = true;
    });

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

   uint32_t wordLength = 16;
   simpleneutron::components::gpio::WordLengthController::setWordLength(wordLength);

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

   simpleneutron::components::gpio::SensorController::activateSpecific(0b01010101u);

   dma.enable();
   dma1.enable();

   while(!quit) {
      // main loop: it does nothing!
      std::this_thread::sleep_for(2ms);
   }

   return 0;
}
