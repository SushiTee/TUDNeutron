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

    NONE // marks the last Type (is used to determine valid types)
};

constexpr kn::port_t PORT = 22222;
constexpr size_t BUFFER_SIZE = 1024;
constexpr size_t PACKAGE_HEADER_SIZE = 3;

class Controller {
    std::unique_ptr<kn::tcp_socket> mSock = nullptr;
    int mMem;
    std::vector<std::unique_ptr<simpleneutron::components::dma::Dma>> mDmas;

    bool receiveData();
    bool handleData(kn::buffer<BUFFER_SIZE> &buff, MessageType type, size_t size);
    bool sendData(MessageType type, const std::string &data);
    bool isSocketValid(kn::socket_status status);

public:
    Controller() = delete;
    Controller(int mem);
    Controller(const Controller&) = delete;
    void operator=(const Controller&) = delete;

    void run();
};

} // controller    
} // components
} // simpleneutron
