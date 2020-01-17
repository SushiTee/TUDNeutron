#include <iostream>
#include <dma/dma.h>

namespace simpleneutron {
namespace components {
namespace dma {

Dma::Dma(uint32_t memoryBase, uint32_t registerBase)
 : MEMORY_BASE(memoryBase), REGISTER_BASE(registerBase)
{
}

void Dma::test() const {
    std::cout << "Hallo Welt!!" << std::endl << std::hex << "register base " << REGISTER_BASE <<
        std::endl << "S2MM_LENGTH " << S2MM_LENGTH << std::endl;
}

} // dma    
} // components
} // simpleneutron
