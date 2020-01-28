#include <iostream>
#include <csignal>
#include <chrono>
#include <logger/logger.h>
#include <controller/controller.h>

namespace simpleneutron {
namespace components {
namespace controller {

// to override SIGINT so the proecss is quit correctly and not just stopped
constexpr int quitSignal = SIGINT;
bool quit = false;

void Controller::run() {
    // enforce POSIX semantics
    siginterrupt(quitSignal, true);

    // register signal handler
    std::signal(quitSignal, [](int) {
        // use global var here
        quit = true;
    });

    using namespace std::chrono_literals;
    kn::tcp_socket listenSock({"0.0.0.0", PORT});
    listenSock.bind();
    listenSock.listen();

    while (!quit) {
        LogOut << "Waiting for a client on port " << PORT << std::endl;
        mSock = std::make_unique<kn::tcp_socket>(listenSock.accept());
        if (quit == true) {
            break;
        }

        //mSock->get_bind_loc();

        bool continueReceiving = true;
        kn::buffer<1024> buff;

        // do this loop here since only one connection is allowed anyways
        while (continueReceiving)
        {
            if (auto [size, valid] = mSock->recv(buff); valid)
            {
                LogOut << "data received!" << std::endl;
                if (valid.value == kn::socket_status::cleanly_disconnected) {
                    continueReceiving = false;
                } else {
                    buff[size] = std::byte{ '\0' };
                    LogOut << reinterpret_cast<const char*>(buff.data()) << std::endl;
                }
            }
            //If not valid remote host closed conection
            else
            {
                LogOut << "Remote closed connected or a signal interrupt occured" << std::endl;
                continueReceiving = false;
            }
        }

        mSock->close();
        mSock = nullptr;
    }
}

} // controller    
} // components
} // simpleneutron
