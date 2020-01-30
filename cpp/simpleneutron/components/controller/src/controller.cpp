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

Controller::Controller(int mem) : mMem(mem)
{}

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
        // do this loop here since only one connection is allowed anyways
        while (continueReceiving)
        {
            continueReceiving = receiveData();

            //If not valid remote host closed conection
            if (!continueReceiving) {
                LogOut << "Remote closed connected or a signal interrupt occured" << std::endl;
            }
        }

        mSock->close();
        mDmas.clear();
        mSock = nullptr;
    }

    listenSock.close();
}

// package format: [(message type <1byte>)|(payload size <2byte>)|(payload)]
bool Controller::receiveData() {
    // nested functions to keep at leat a bit "DRY"
    auto isSocketValid = [](kn::socket_status status) {
        if (status == kn::socket_status::cleanly_disconnected) {
            LogOut << "Cleanly disconnected!" << std::endl;
            return false;
        } else if (status == kn::socket_status::errored) {
            LogOut << "disconnected!" << std::endl;
            return false;
        }
        return true;
    };

    auto isValidPacketType = [](MessageType type) {
        return type < MessageType::NONE;
    };

    auto receive = [this, isSocketValid](kn::buffer<BUFFER_SIZE>& buff, size_t maxSize) {
        size_t packetDataReceived = 0;
        while (packetDataReceived < maxSize)
        {
            if (auto [size, valid] = mSock->recv(reinterpret_cast<std::byte *>(buff.data()) + packetDataReceived, maxSize - packetDataReceived); valid) { // C++17 <3
                // check if we got an interrupt
                if (quit) {
                    return false;
                }

                // socket might be invalid
                if (!isSocketValid(valid.value)) {
                    return false;
                }
                packetDataReceived += size;
            }
        }
        return true;
    };

    // reserve buffer
    kn::buffer<BUFFER_SIZE> buff;

    // get first 3 bytes of packet which is supposed to be the header!
    if (!receive(buff, PACKAGE_HEADER_SIZE)) {
        return false;
    }

    // we got the first 3 bytes of our package!
    // read the type and check its valid (Byte 0 is the type)
    MessageType messageType = static_cast<MessageType>(buff[0]);
    if (!isValidPacketType(messageType)) {
        LogErr << "Received invalid Message. Disconnecting!" << std::endl;
        return false;
    }

    // type is OK! Get the payload size (Byte [1] and [2] conain the size)
    uint16_t payloadSize = * reinterpret_cast<const uint16_t *>(&buff[1]);
    if (payloadSize > BUFFER_SIZE) {
        LogErr << "Payload too big (given: " << payloadSize << " max: " << BUFFER_SIZE << "). Disconnecting!" << std::endl;
        return false;
    }
    
    // header done. Take care of payload
    if (!receive(buff, payloadSize)) {
        return false;
    }

    // everything is there \o/
    handleData(buff, messageType, payloadSize);
    return true;
}

void Controller::handleData(kn::buffer<BUFFER_SIZE> &buff, MessageType type, size_t size) {
    std::string str(reinterpret_cast<char*>(buff.begin()), reinterpret_cast<char*>(buff.begin() + size));
    LogOut << "Message: " << str << std::endl;
    switch (type)
    {
    case MessageType::START_DMA: {
        LogOut << "Handle DMA start " << std::endl;
        auto dma = std::make_unique<simpleneutron::components::dma::Dma>(0, mMem);
        if (dma->hasError()) {
            LogErr << "Error creating DMA object" << std::endl;
            break;
        }

        mDmas.push_back(std::move(dma));
        mDmas[0]->enable();
        break;
    }
    case MessageType::STOP_DMA:
        LogOut << "Handle DMA stop " << size << std::endl;
        break;
    default:
        break;
    }
}

} // controller    
} // components
} // simpleneutron
