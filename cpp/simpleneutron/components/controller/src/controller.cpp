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
                if (valid.value == kn::socket_status::cleanly_disconnected) {
                    continueReceiving = false;
                } else if (size > 0) {
                    handleData(buff, size);
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

    listenSock.close();
}

// package format: [(message type <1byte>)|(payload size <2byte>)|(payload)]
void Controller::handleData(kn::buffer<1024> &buff, size_t size) {
    static MessageType type = MessageType::NONE;
    static uint16_t dataSize = 0;
    static bool receivedAll = true;

    // put together the data if the message is received in more than one recv call
    if (mData.empty()) {
        if (size < 3) {
            LogErr << "Error: Unplausible data received!" << std::endl;
            return;
        }
        type = static_cast<MessageType>(buff[0]);
        dataSize = static_cast<uint16_t>(std::to_integer<uint8_t>(buff[1]) | (std::to_integer<uint8_t>(buff[2]) << 8));
        if (dataSize > 3) {
            mData = std::vector<std::byte>(buff.begin() + 3, buff.begin() + size);
            if (mData.size() < static_cast<size_t>(dataSize)) {
                receivedAll = false;
                return;
            } else {
                receivedAll = true;
            }
        } else {
            receivedAll = true;
        }
    } else if (!receivedAll){
        mData.insert(mData.end(), buff.begin(), buff.begin() + size);
        if (mData.size() == static_cast<size_t>(dataSize)) {
            receivedAll = true;
        }
    }

    // we got everything. Handle the data!
    if (receivedAll) {
        std::string str(reinterpret_cast<const char*>(mData.data() + '\0'));
        LogOut << "Payload: " << str << std::endl;
        switch (type)
        {
        case MessageType::START_DMA:
            LogOut << "Handle DMA start" << dataSize << std::endl;
            break;
        case MessageType::STOP_DMA:
            LogOut << "Handle DMA stop" << dataSize << std::endl;
            break;
        default:
            break;
        }

        mData.clear();
    }
}

} // controller    
} // components
} // simpleneutron
