#pragma once

#include <memory>
#include <vector>
#include <thread>
#include <dma/dma.h>
#include <networking/kissnet.hpp>

namespace adcneutron {
namespace components {
namespace controller {

namespace kn = kissnet;

enum class MessageType : uint8_t {
    DMA0 = 0,
    START_DMA,
    STOP_DMA,
    CONNECT,
    FIFO_FULL,

    NONE // marks the last Type (is used to determine valid types)
};

constexpr kn::port_t PORT = 22222;
constexpr size_t BUFFER_SIZE = 1024;
constexpr size_t PACKAGE_HEADER_SIZE = 3;

class Controller {
    std::unique_ptr<kn::tcp_socket> mSock = nullptr;
    int mMem;
    std::unique_ptr<adcneutron::components::dma::Dma> mDma;
    std::unique_ptr<std::thread> mThread = nullptr;
    std::mutex mSendLock;
    uint8_t mSwitchState = 0;

    bool receiveData();
    bool handleData(kn::buffer<BUFFER_SIZE> &buff, MessageType type, size_t size);
    bool sendDataImpl(const std::byte *header, const std::byte *data, size_t dataLength);
    bool sendData(MessageType type, const std::string &data);
    void sendDmaData();
    bool isSocketValid(kn::socket_status status) const;

    bool dmaExists() const;
    void deactivateAll();

    void destroyThread();

public:
    Controller() = delete;
    ~Controller();
    Controller(int mem);
    Controller(const Controller&) = delete;
    void operator=(const Controller&) = delete;

    void run();
};

} // controller    
} // components
} // adcneutron
