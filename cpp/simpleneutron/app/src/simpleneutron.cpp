#include <iostream>
#include <dma/dma.h>

int main(int argc, char *argv[]){
   auto d = simpleneutron::components::dma::Dma(0x00ff0000, 0x22ff0000);
   d.test();
   return 0;
}
