#include <iostream>
#include <dma/dma.h>

int main(int argc, char *argv[]){
   auto d = simpleneutron::components::dma::Dma();
   d.test();
   return 0;
}
