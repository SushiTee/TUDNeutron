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

bool Controller::receiveData() {
    // static variables since we need to store them for more calls
    static kn::buffer<BUFFER_SIZE> sBuf;
    static size_t sPacketDataReceived = 0;
    static bool sProcessingPacket = false;
    static MessageType sMessageType = MessageType::NONE;
    static uint16_t sPayloadSize = 0u;

    // nested functions to keep at leat a bit "DRY"
    auto isSocketValid = [](kn::socket_status status) {
        if (status == kn::socket_status::cleanly_disconnected) {
            LogOut << "Cleanly disconnected!" << std::endl;
            return false;
        }
        return true;
    };

    auto isValidPacketType = [](MessageType type) {
        return type < MessageType::NONE;
    };

    auto resetStatics = []() {
        sPacketDataReceived = 0;
        sProcessingPacket = false;
        sMessageType = MessageType::NONE;
        sPayloadSize = 0u;
    };

    if (!sProcessingPacket) { // get first 3 bytes of packet which is supposed to be the header!
        std::byte buff[3];
        if (auto [size, valid] = mSock->recv(buff, 3 - sPacketDataReceived); valid) // C++17 <3
        {
            if (!isSocketValid(valid.value)) {
                resetStatics();
                return false;
            } else {
                if (!size) { // there is nothing ?!
                    return true;
                }
                std::move(std::begin(buff), std::begin(buff) + size, sBuf.begin() + sPacketDataReceived);
                sPacketDataReceived += size;
                if (sPacketDataReceived != 3) { // there is still a bit missing!
                    return true;
                } else {
                    // we got the first 3 bytes of our package!
                    // read the type and check its valid
                    MessageType type = static_cast<MessageType>(sBuf[0]);
                    if (!isValidPacketType(type)) {
                        LogErr << "Received invalid Message. Disconnecting!" << std::endl;
                        resetStatics();
                        return false;
                    }
                    sMessageType = type;
                    // type is OK! Get the payload size
                    auto payloadSize = static_cast<uint16_t>(std::to_integer<uint8_t>(sBuf[1]) | (std::to_integer<uint8_t>(sBuf[2]) << 8));
                    if (payloadSize > BUFFER_SIZE) {
                        LogErr << "Payload too big (given: " << payloadSize << " max: " << BUFFER_SIZE << "). Disconnecting!" << std::endl;
                        resetStatics();
                        return false;
                    }

                    // everything is in place to start receiving the payload
                    sPacketDataReceived = 0;
                    sPayloadSize = payloadSize;
                    sProcessingPacket = true;
                    return true;
                }
            }
        }
    } else {
        std::byte buff[BUFFER_SIZE];
        if (auto [size, valid] = mSock->recv(buff, sPayloadSize - sPacketDataReceived); valid) // C++17 <3
        {
            if (!isSocketValid(valid.value)) {
                resetStatics();
                return false;
            } else {
                if (!size) { // there is nothing ?!
                    return true;
                }
                std::move(std::begin(buff), std::begin(buff) + size, sBuf.begin() + sPacketDataReceived);
                sPacketDataReceived += size;
                if (sPacketDataReceived != sPayloadSize) { // there is still a bit missing!
                    return true;
                } else {
                    // everything is there \o/
                    handleData(sBuf, sMessageType, sPayloadSize);
                    sMessageType = MessageType::NONE;
                    sPacketDataReceived = 0;
                    sPayloadSize = 0;
                    sProcessingPacket = false;
                    return true;
                }
            }
        }
    }
    resetStatics();
    return false;
}

// package format: [(message type <1byte>)|(payload size <2byte>)|(payload)]
void Controller::handleData(kn::buffer<BUFFER_SIZE> &buff, MessageType type, size_t size) {
    std::string str(reinterpret_cast<char*>(buff.begin()), reinterpret_cast<char*>(buff.begin() + size));
    LogOut << "Message: " << str << std::endl;
    switch (type)
    {
    case MessageType::START_DMA: {
        LogOut << "Handle DMA start " << size << std::endl;
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
