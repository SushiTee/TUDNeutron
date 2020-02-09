#include <iostream>
#include <sstream>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>
#include <logger/logger.h>
#include <dma/dma.h>
#include <gpio/wordlengthcontroller.h>

namespace simpleneutron {
namespace components {
namespace dma {

using namespace memorycontrol;

// we need this because we have to send a signal to the dma thread
// to terminate it while it is blocking 
constexpr int quitSignal = SIGINT;
sighandler_t prevSignal;
Dma *dmaStore = nullptr;

enum DmaOffset : Offset {
    S2MM_CONTROL = 0x30,
    S2MM_STATUS = 0x34,
    S2MM_DESTINATION = 0x48,
    S2MM_LENGTH = 0x58
};

enum ControlBit : Bit {
    CONTROL_RUN = 0,
    CONTROL_RESET = 2,
    CONTROL_COMPLETE_INTERRUPT = 12,
    CONTROL_DELAY_INTERRUPT = 13,
    CONTROL_ERROR_INTERRUPT = 14
};

Dma::Dma(uint8_t id, int mem)
 : ID(id), MEMORY_BASE(DMAS[id].mMemory), REGISTER_BASE(DMAS[id].mRegister), mWordLength(gpio::WordLengthController::getWordLength()), mInterruptCount(0)
{
    mRegister = (uint32_t *)mmap(NULL, 128, PROT_READ | PROT_WRITE, MAP_SHARED, mem, REGISTER_BASE);
    if (mRegister == MAP_FAILED) {
        LogErr << "DMA (" << std::hex << REGISTER_BASE << "): could not map register" << std::endl;
        mHasError = true;
        return;
    }

    mMemoryMap = (uint32_t *)mmap(NULL, 0x2000000, PROT_READ | PROT_WRITE, MAP_SHARED, mem, MEMORY_BASE);
    if (mMemoryMap == MAP_FAILED) {
        LogErr << "DMA (" << std::hex << REGISTER_BASE << "): could not map memory map" << std::endl;
        mHasError = true;
        return;
    }

    mUio = open(DMAS[id].mUioDevice, O_RDWR);
    if (mUio < 0) {
        LogErr << "DMA (" << std::hex << REGISTER_BASE << "): could not open UIO Device" << std::endl;
        mHasError = true;
        return;
    }
}

Dma::~Dma() {
    if (mUio >= 0) {
        mUio = close(mUio);
        if (mUio < 0) {
            LogOut << "DMA (" << std::hex << REGISTER_BASE << "): could not close UIO Device" << std::endl;
        }
    }

    disable();
}

uint32_t Dma::writeToReadPointerDifference() {
    return mWriteAddress < mReadAddress ? mReadAddress - mWriteAddress : (mSize - mWriteAddress) + mReadAddress;
}

uint32_t Dma::readToWritePointerDifference() {
    return mReadAddress <= mWriteAddress ? mWriteAddress - mReadAddress : (mSize - mReadAddress) + mWriteAddress;
}

bool Dma::empty() {
    return mReadAddress == mWriteAddress;
}

bool Dma::full() {
    uint32_t diff = writeToReadPointerDifference();
    if (diff < mWordLength) {
        return true;
    }
    return false;
}

void Dma::registerEnable() {
    uint32_t value = (1 << CONTROL_RUN) | (1 << CONTROL_COMPLETE_INTERRUPT) | (1 << CONTROL_DELAY_INTERRUPT) | (1 << CONTROL_ERROR_INTERRUPT);
    MemoryControl::registerWrite(mRegister, DmaOffset::S2MM_CONTROL, value);
}

void Dma::reset() {
    mWriteAddress = 0;
    mReadAddress = 0;
    MemoryControl::registerSetBit(mRegister, DmaOffset::S2MM_CONTROL, CONTROL_RESET, 1);
}

void Dma::enableInterrupt() {
    // interrupt is disabled after read. So we have to reenable it by writing to it also reset the interrup bit
    MemoryControl::registerSetBit(mRegister, DmaOffset::S2MM_STATUS, CONTROL_COMPLETE_INTERRUPT, 1);
    write(mUio, "1", 4);
}

void Dma::waitForData() {
    // read interrupt count to buffer
    char buf[4];
    int result = read(mUio, buf, 4); // this blocks until an interrupt occurs. Exactly what we want.
    if (result != 4) {
        LogOut << "DMA (" << std::hex << REGISTER_BASE << "): Signal Interrupt occured. No data handling!" << std::endl;
    } else {
        uint32_t numberOfInterrupts = static_cast<uint32_t>(*buf);
        // todo: check if we even have to check the interrupt count as it should be always just one!
        if (mInterruptCount == 0) { // on very first interrupt after software start set the correct value
            mInterruptCount = numberOfInterrupts - 1;
        }
        LogOut << "DMA (" << std::hex << REGISTER_BASE << "): Interrupt occured | Count: " << (numberOfInterrupts - mInterruptCount) << std::endl;
        mInterruptCount = numberOfInterrupts;

        // interrupt is disabled after read. So we have to reenable it by writing to it
        enableInterrupt();
    }
}

void Dma::enable() {
    if (mEnabled) {
        return;
    }

    mEnabled = true;
    mThread = std::make_unique<std::thread>([this](){
        reset();
        enableInterrupt();
        if (hasStatusError()) {
            LogOut << "DMA (" << std::hex << REGISTER_BASE << "): Status error" << std::endl;
            return;
        }
        registerEnable();
        if (hasStatusError()) {
            LogOut << "DMA (" << std::hex << REGISTER_BASE << "): Status error" << std::endl;
            return;
        }
        setDestinationAddress(mWriteAddress);
        if (hasStatusError()) {
            LogOut << "DMA (" << std::hex << REGISTER_BASE << "): Status error" << std::endl;
            return;
        }
        setWordLength(mWordLength);
        if (hasStatusError()) {
            LogOut << "DMA (" << std::hex << REGISTER_BASE << "): Status error" << std::endl;
            return;
        }

        mRunning = true;

        while(!mQuit) {
            waitForData();
            // if thread was quit while waiting break here
            if (mQuit) {
                break;
            }

            uint32_t status = getStatus();
            
            if (hasStatusError(status)) {
                break;
            }
            if (status & ((1 << simpleneutron::components::dma::StatusBit::STATUS_HALTED) | (1 << simpleneutron::components::dma::StatusBit::STATUS_IDLE))) {
                LogOut << "DMA (" << std::hex << REGISTER_BASE << "): " << std::hex << readMemory(mWriteAddress) << " status: " << std::dec << simpleneutron::components::memorycontrol::MemoryControl::registerRead(mRegister, 0x58u) << std::endl;
                mWriteAddress += mWordLength;
                if (mWriteAddress >= mSize) {
                    mWriteAddress = 0;
                }
                setDestinationAddress(mWriteAddress);
                setWordLength(mWordLength);
            }
        }

        mRunning = false;

        LogOut << "DMA (" << std::hex << REGISTER_BASE << ") Thraed terminated!" << std::endl;
    });
}

void Dma::disable() {
    if (!mEnabled) {
        return;
    }

    // store current object to global var
    dmaStore = this;

    // enforce POSIX semantics
    siginterrupt(quitSignal, true);

    // register signal handler
    prevSignal = std::signal(quitSignal, [](int) {
        // use global var here
        if (dmaStore) {
            dmaStore->setQuit(true);
        }

        // reset to previous (original) signal
        std::signal(quitSignal, prevSignal);
    });

    // send signal to thread
    pthread_kill(mThread->native_handle(), quitSignal);

    // wait for thread to finish
    mThread->join();

    // cleanup
    dmaStore = nullptr;
    mThread = nullptr;
    mQuit = false;

    // turn off hardware
    MemoryControl::registerSetBit(mRegister, DmaOffset::S2MM_CONTROL, CONTROL_RUN, 0);

    mEnabled = false;
}

void Dma::setDestinationAddress(uint32_t offset) {
    MemoryControl::registerWrite(mRegister, DmaOffset::S2MM_DESTINATION, MEMORY_BASE + offset * 4);
}

uint16_t Dma::getWordLength() {
    return mWordLength;
}

void Dma::setWordLength(uint32_t length) {
    MemoryControl::registerWrite(mRegister, DmaOffset::S2MM_LENGTH, length * 4 * 2); // packets are always 4 byte
}

uint32_t Dma::getStatus() {
    return MemoryControl::registerRead(mRegister, DmaOffset::S2MM_STATUS);
}

uint32_t Dma::readMemory(uint32_t offset) {
    return MemoryControl::memoryRead(mMemoryMap, offset * 4);
}

bool Dma::hasStatusError() {
    uint32_t status = getStatus();
    return hasStatusError(status);
}

bool Dma::hasStatusError(uint32_t status) {
    bool hasError = false;
    std::stringstream ss;
    if (status & (1 << STATUS_HALTED)) ss << "(halted)";
    if (status & (1 << STATUS_IDLE)) ss << "(idle)";
    if (status & (1 << STATUS_INTERNAL_ERROR)) {
        ss << "(internal error)";
        hasError = true;
    }
    if (status & (1 << STATUS_SLAVE_ERROR)) {
        ss << "(slave error)";
        hasError = true;
    }
    if (status & (1 << STATUS_DECODER_ERROR)) {
        ss << "(decoder error)";
        hasError = true;
    }
    if (status & (1 << STATUS_COMPLETE_INTERRUPT)) ss << "(interrupt completed)";
    if (status & (1 << STATUS_DELAY_INTERRUPT)) ss << "(delay interrupt)";
    if (status & (1 << STATUS_INTERRUPT_ERROR)) {
        ss << "(interrupt error)";
        hasError = true;
    }
    if (!ss.str().empty()) {
        LogOut << "DMA (" << std::hex << REGISTER_BASE << ") Status: " << ss.str() << std::endl;
    }
    return hasError;
}

bool Dma::hasError() const {
    return mHasError;
}

bool Dma::isRunning() const {
    return mRunning;
}

void Dma::setQuit(bool quit) {
    mQuit = quit;
}

uint32_t *Dma::memoryMap() const {
    return mMemoryMap;
}

uint32_t Dma::writeSize() const {
    uint32_t size = 0;
    uint32_t writeAddress = mWriteAddress;
    if (writeAddress > mReadAddress) {
        size = writeAddress - mReadAddress;
    } else {
        size = mSize - mReadAddress;
    }

    if (mWordLength < 4) {
        if (size / mWordLength > 0x10000u) {
            return 0x10000u / mWordLength;
        }
    } else {
        if (size * 4 > 0x100000u) {
            return 0x100000u / 4;
        }
    }
    return size;
}

uint32_t Dma::readAddress() const {
    return mReadAddress;
}

void Dma::setReadAddress(uint32_t lastSize) {
    mReadAddress += lastSize;
    if (mReadAddress >= mSize) {
        mReadAddress = 0;
    }
}

} // dma    
} // components
} // simpleneutron
