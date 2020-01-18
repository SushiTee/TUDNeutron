#include <iostream>
#include <fcntl.h>
#include <sys/mman.h>
#include <dma/dma.h>
#include <hwdevice/hwdevice.h>

int main(int argc, char *argv[]) {
   int mem = open("/dev/mem", O_RDWR | O_SYNC);
   if (mem == -1) {
      std::cout << "Error opening /dev/mem" << std::endl;
      return 1;
   }

   auto d = simpleneutron::components::dma::Dma(DMA_0_MEMORY, DMA_0_REGISTER, mem);
   if (d.hasError()) {
      std::cout << "Error creating DMA object" << std::endl;
      return 1;
   }

   d.enable();

   return 0;
}
