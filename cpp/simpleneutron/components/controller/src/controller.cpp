#include <iostream>
#include <string>
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

union payloadSizeConverter {
    uint8_t bytes[2];
    uint16_t num;
};

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
    // nested function to keep at leat a bit "DRY"
    auto receive = [this](kn::buffer<BUFFER_SIZE>& buff, size_t maxSize) {
        size_t packetDataReceived = 0;
        while (packetDataReceived < maxSize)
        {
            if (auto [size, valid] = mSock->recv(buff.data() + packetDataReceived, maxSize - packetDataReceived); valid) { // C++17 <3
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
    if (messageType >= MessageType::NONE) {
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
    return handleData(buff, messageType, payloadSize);
}

bool Controller::sendData(MessageType type, const std::string &data) const {
    // lengthh of data
    auto dataLength = data.length();

    // buffer
    std::array<uint8_t, PACKAGE_HEADER_SIZE> message;

    // write header
    payloadSizeConverter conv;
    conv.num = static_cast<uint16_t>(dataLength);
    message[0] = static_cast<uint8_t>(type);
    message[1] = conv.bytes[0];
    message[2] = conv.bytes[1];

    // send header
    {
        auto [size, valid] = mSock->send(reinterpret_cast<const std::byte*>(message.data()), PACKAGE_HEADER_SIZE);
        // check if we got an interrupt
        if (quit) {
            return false;
        }

        // socket might be invalid
        if (!isSocketValid(valid.value)) {
            return false;
        }
    }
    
    // send data
    {
        auto [size, valid] = mSock->send(reinterpret_cast<const std::byte*>(data.c_str()), dataLength);
        // check if we got an interrupt
        if (quit) {
            return false;
        }

        // socket might be invalid
        if (!isSocketValid(valid.value)) {
            return false;
        }
    }

    return true;
}

bool Controller::handleData(kn::buffer<BUFFER_SIZE> &buff, MessageType type, size_t size) {
    bool networkOK = true;
    switch (type)
    {
    case MessageType::START_DMA: {
        LogOut << "Handle DMA start " << std::endl;

        if (dmaExists(0)) {
            networkOK = sendData(MessageType::START_DMA, "{'status':'Error','msg':'DMA already exists.'}");
            break;
        }

        auto dma = std::make_unique<simpleneutron::components::dma::Dma>(0, mMem);
        if (dma->hasError()) {
            LogErr << "Error creating DMA object" << std::endl;
            break;
        }

        mDmas.push_back(std::move(dma));
        mDmas[0]->enable();

        if (mDmas[0]->hasError()) {
            // send answer!
            networkOK = sendData(MessageType::START_DMA, "{'status':'Error'}");
        } else {
            // send answer!
            networkOK = sendData(MessageType::START_DMA, "{'status':'OK'}");
        }
        break;
    }
    case MessageType::STOP_DMA:
        LogOut << "Handle DMA stop " << size << std::endl;
        break;
    default:
        break;
    }

    return networkOK;
}

bool Controller::isSocketValid(kn::socket_status status) const {
    if (status == kn::socket_status::cleanly_disconnected) {
        LogOut << "Cleanly disconnected!" << std::endl;
        return false;
    } else if (status == kn::socket_status::errored) {
        LogOut << "disconnected!" << std::endl;
        return false;
    }
    return true;
}

bool Controller::dmaExists(uint8_t id) const {
    for (auto &dma : mDmas) {
        if (dma->getID() == id) {
            return true;
        }
    }
    return false;
}

} // controller    
} // components
} // simpleneutron
