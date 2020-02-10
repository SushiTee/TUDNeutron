#include <iostream>
#include <string>
#include <csignal>
#include <chrono>
#include <cmath>
#include <unistd.h>
#include <bitset>
#include <logger/logger.h>
#include <gpio/wordlengthcontroller.h>
#include <gpio/sensorcontroller.h>
#include <gpio/switches.h>
#include <gpio/testgenerator.h>
#include <gpio/triggerinput.h>
#include <controller/controller.h>

namespace simpleneutron {
namespace components {
namespace controller {

// to override SIGINT so the proecss is quit correctly and not just stopped
constexpr int quitSignal = SIGINT;
sighandler_t prevSignal;
bool quit = false;
bool threadQuit = false;

union payloadSizeConverter {
    uint8_t bytes[2];
    uint16_t num;
};

Controller::Controller(int mem) : mMem(mem)
{}

Controller::~Controller() {
    destroyThread();
}

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
            destroyThread();
            deactivateAll();
            mSock->close();
            mSock = nullptr;
            break;
        }

        mSwitchState = gpio::Switches::getStatus();
        LogOut << "Switch state: " << std::bitset<8>(mSwitchState) << std::endl;

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

        destroyThread();
        deactivateAll();
        mSock->close();
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
            } else {
                return false;
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

bool Controller::sendDataImpl(const std::byte *header, const std::byte *data, size_t dataLength)
{
    // send header
    {
        mSendLock.lock();
        auto [size, valid] = mSock->send(header, PACKAGE_HEADER_SIZE);
        // check if we got an interrupt
        if (quit || threadQuit) {
            mSendLock.unlock();
            return false;
        }

        // socket might be invalid
        if (!isSocketValid(valid.value)) {
            mSendLock.unlock();
            return false;
        }
    }

    // send data
    {
        auto [size, valid] = mSock->send(data, dataLength);
        // check if we got an interrupt
        if (quit || threadQuit) {
            mSendLock.unlock();
            return false;
        }

        // socket might be invalid
        if (!isSocketValid(valid.value)) {
            mSendLock.unlock();
            return false;
        }
    }

    mSendLock.unlock();
    return true;
}

bool Controller::sendData(MessageType type, const std::string &data) {
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

    return sendDataImpl(reinterpret_cast<const std::byte*>(message.data()), reinterpret_cast<const std::byte*>(data.c_str()), dataLength);
}

void Controller::sendDmaData() {
    using namespace std::chrono_literals;
    while (!threadQuit)
    {
        bool dataSend = false;
        for (auto &dma : mDmas) {
            if (dma->empty()) {
                continue;
            }

            uint32_t size = dma->writeSize();
            uint32_t offset = dma->readAddress();
            uint16_t payloadSize = static_cast<uint16_t>(size / dma->getWordLength()); // 0 means max!
            dma->setReadAddress(size);

            // buffer
            std::array<uint8_t, PACKAGE_HEADER_SIZE> message;

            // write header
            payloadSizeConverter conv;
            conv.num = static_cast<uint16_t>(payloadSize);
            message[0] = dma->getID();
            message[1] = conv.bytes[0];
            message[2] = conv.bytes[1];

            sendDataImpl(reinterpret_cast<const std::byte*>(message.data()), reinterpret_cast<const std::byte*>(dma->memoryMap() + offset), size * 4);

            if (!dataSend) {
                dataSend = true;
            }
        }

        // sleep if there is really nothing!
        if (!dataSend) {
            std::this_thread::sleep_for(1ms);
        }
    }
}

bool Controller::handleData(kn::buffer<BUFFER_SIZE> &buff, MessageType type, size_t size) {
    bool networkOK = true;
    switch (type)
    {
    case MessageType::START_DMA: {
        LogOut << "Handle DMA start " << std::endl;

        if (size != 1) {
            LogErr << "Received unexpected payload" << std::endl;
            networkOK = sendData(type, "{\"status\":\"Error\",\"msg\":\"Received unexpected payload.\"}");
            break;
        } 

        uint8_t dmas = static_cast<uint8_t>(buff[0]);
        if (dmas == 0u) {
            LogErr << "Error no DMA should be activated" << std::endl;
            networkOK = sendData(type, "{\"status\":\"Error\",\"msg\":\"Error no DMA should be activated.\"}");
            break;
        }

        bool dmaStartFailed = false;
        for (auto i = 0; i < 8; i++) {
            if (dmas & (1 << i)) {
                if (dmaExists(i)) {
                    LogErr << "Error DMA already exists" << std::endl;
                    deactivateAll();
                    networkOK = sendData(type, "{\"status\":\"Error\",\"msg\":\"DMA already exists.\"}");
                    dmaStartFailed = true;
                    break;
                }

                auto dma = std::make_unique<dma::Dma>(i, mMem);
                if (dma->hasError()) {
                    LogErr << "Error creating DMA object" << std::endl;
                    deactivateAll();
                    networkOK = sendData(type, "{\"status\":\"Error\",\"msg\":\"Error creating DMA object.\"}");
                    dmaStartFailed = true;
                    break;
                }

                mDmas.push_back(std::move(dma));
                mDmas[mDmas.size() - 1]->enable();
                if (mDmas[mDmas.size() - 1]->hasError()) {
                    // send answer!
                    LogErr << "Error enabling the DMA" << std::endl;
                    deactivateAll();
                    networkOK = sendData(type, "{\"status\":\"Error\",\"msg\":\"Error enabling the DMA.\"}");
                    dmaStartFailed = true;
                }
            }
        }

        if (!dmaStartFailed) {
            // do busy wait until all Dmas are started
            bool allDmaRunning = false;
            while (!allDmaRunning) {
                allDmaRunning = true;
                for (auto &ref : mDmas) {
                    if (!ref->isRunning()) {
                        allDmaRunning = false;
                        break;
                    }
                }
            }
            gpio::SensorController::activateSpecific(dmas);
            mThread = std::make_unique<std::thread>([this](){
                sendDmaData();
            });
            networkOK = sendData(type, "{\"status\":\"OK\"}");
        }
        break;
    }
    case MessageType::STOP_DMA:
        LogOut << "Handle DMA stop " << size << std::endl;
        destroyThread();
        deactivateAll();
        networkOK = sendData(type, "{\"status\":\"OK\"}");
        break;
    case MessageType::CONNECT: {
        // stop everything
        destroyThread();
        deactivateAll();

        // check payload size
        if (size != 11) {
            LogErr << "Received unexpected payload" << std::endl;
            networkOK = sendData(type, "{\"status\":\"Error\",\"msg\":\"Received unexpected payload.\"}");
            break;
        } 

        // setting package size
        uint8_t value = static_cast<uint8_t>(buff[0]);
        if (value > 12) {
            networkOK = sendData(type, "{\"status\":\"Error\",\"msg\":\"Value for package size must be between 0 and 12\"}");
        } else {
            LogOut << "Use packet size: " << static_cast<uint16_t>(std::pow(2, value)) << std::endl;
            gpio::WordLengthController::setWordLength(static_cast<uint16_t>(std::pow(2, value)));
        }

        // setting trigger input
        value = static_cast<uint8_t>(buff[1]);
        if (value & 1) {
            gpio::TriggerInput::activate();
        } else {
            gpio::TriggerInput::deactivate();
        }

        // setting test generator
        value = static_cast<uint8_t>(buff[2]);
        if (value & 1) {
            gpio::TestGenerator::activate();
        } else {
            gpio::TestGenerator::deactivate();
        }

        // setting test generator signal count
        gpio::TestGenerator::setSignalCount(* reinterpret_cast<const uint32_t *>(&buff[3]));

        // setting test generator signal frequency
        LogOut << "Use frequency: " << * reinterpret_cast<const uint32_t *>(&buff[7]) << std::endl;
        gpio::TestGenerator::setSignalFrequency(* reinterpret_cast<const uint32_t *>(&buff[7]));

        bool oneActive = false;
        std::string switchState = "[";
        for (auto i = 0; i < 8; i++) {
            if (mSwitchState & (1 << i)) {
                switchState += "true";
                oneActive = true; 
            } else {
                switchState += "false"; 
            }
            if (i < 7) {
                switchState += ',';
            }
        }
        if (!oneActive) {
            switchState = "false";
        } else {
            switchState += "]";
        }
        networkOK = sendData(type, "{\"status\":\"OK\",\"switchState\":" + switchState + "}"); // todo: fill with data
        break;
    }
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

void Controller::deactivateAll() {
    mDmas.clear();
    gpio::SensorController::deactivateAll();
}

void Controller::destroyThread() {
    if (!mThread) return;

    // enforce POSIX semantics
    siginterrupt(quitSignal, true);

    // register signal handler
    prevSignal = std::signal(quitSignal, [](int) {
        // use global var here
        threadQuit = true;

        // reset to previous (original) signal
        std::signal(quitSignal, prevSignal);
    });

    // send signal to thread
    pthread_kill(mThread->native_handle(), quitSignal);

    // wait for thread to finish
    mThread->join();

    mThread = nullptr;

    threadQuit = false;
}

} // controller    
} // components
} // simpleneutron
