#pragma once

#include <memory>
#include <vector>
#include <thread>
#include <dma/dma.h>
#include <networking/kissnet.hpp>

namespace simpleneutron {
namespace components {
namespace controller {

namespace kn = kissnet;

enum class MessageType : uint8_t {
    DMA0 = 0,
    DMA1,
    DMA2,
    DMA3,
    DMA4,
    DMA5,
    DMA6,
    DMA7,
    START_DMA,
    STOP_DMA,
    NONE = 0xffu
};

class Controller {
    const kn::port_t PORT = 22222;
    std::unique_ptr<kn::tcp_socket> mSock = nullptr;
    std::vector<std::byte> mData;
    int mMem;
    std::vector<simpleneutron::components::dma::Dma> mDmas;

public:
    Controller() = delete;
    Controller(int mem);
    Controller(const Controller&) = delete;
    void operator=(const Controller&) = delete;

    void run();
    void handleData(kn::buffer<1024> &buff, size_t size);
};

} // controller    
} // components
} // simpleneutron
