#pragma once

#include <memory>
#include <thread>
#include <networking/kissnet.hpp>

namespace simpleneutron {
namespace components {
namespace controller {

namespace kn = kissnet;

class Controller {
    const kn::port_t PORT = 22222;
    std::unique_ptr<kn::tcp_socket> mSock = nullptr;

public:
    Controller() = default;
    Controller(const Controller&) = delete;
    void operator=(const Controller&) = delete;

    void run();
};

} // controller    
} // components
} // simpleneutron
