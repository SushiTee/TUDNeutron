#include <iostream>
#include <fstream>
#include <unistd.h>
#include <cstring>
#include <fcntl.h>
#include <filesystem>
#include <logger/logger.h>
#include <hwdevice/hwdevice.h>
#include <gpio/psled.h>

namespace simpleneutron {
namespace components {
namespace gpio {

PsLed::PsLed()
{
    std::string path = "/sys/class/gpio";
    std::string gpioPath = "";
    for (const auto & entry : std::filesystem::directory_iterator(path)) {
        if (entry.is_directory()) {
            std::string filename = entry.path().filename().string();
            if (filename.find("gpiochip") != std::string::npos) {
                std::string gpioBase = filename.substr(8);
                std::string labelPath = entry.path().string() + "/label";
                std::ifstream file(labelPath);
                std::string line;
                std::getline(file, line);
                if (line == "zynq_gpio") {
                    mGpioNumber = std::stoi(gpioBase) + PS_LED.mOffset;
                    gpioPath = path + "/gpio" + std::to_string(mGpioNumber);
                }
            }
        }
    }
    if (mGpioNumber == 0) {
        LogErr << "PS_LED: could not find GPIO for LED" << std::endl;
        mHasError = true;
        return;
    }

    std::string tmpPath = path + "/export";
    int device = open(tmpPath.c_str(), O_WRONLY);
    if (device < 0) {
        LogErr << "PS_LED: could not open export file" << std::endl;
        mHasError = true;
        return;
    }

    std::string gpioNumberStr = std::to_string(mGpioNumber);
    int bytes = write(device, gpioNumberStr.c_str(), gpioNumberStr.length());
    if (static_cast<std::size_t>(bytes) != gpioNumberStr.length()) {
        LogErr << "PS_LED: could not export LED GPIO. Probably already done!" << std::endl;
    }

    close(device);

    tmpPath = gpioPath + "/direction";
    LogOut << "Dir " << tmpPath << std::endl;
    device = open(tmpPath.c_str(), O_WRONLY);
    if (device < 0) {
        LogErr << "PS_LED: could not open direction file" << std::endl;
        mHasError = true;
        return;
    }

    bytes = write(device, "out", 3);
    if (bytes != 3) {
        LogErr << "PS_LED: could not set direction of LED GPIO" << std::endl;
        mHasError = true;
        close(device);
        return;
    }

    close(device);

    tmpPath = gpioPath + "/value";
    mGpio = open(tmpPath.c_str(), O_WRONLY);
    if (mGpio < 0) {
        LogErr << "PS_LED: could not open value file" << std::endl;
        mHasError = true;
        return;
    }

    bytes = write(mGpio, "1", 1);
    if (bytes != 1) {
        LogErr << "PS_LED: could not set value of LED GPIO" << std::endl;
        close(mGpio);
        mHasError = true;
    }
}

PsLed::~PsLed() {
    if (mGpio) {
        int bytes = write(mGpio, "0", 1);
        if (bytes != 1) {
            LogErr << "PS_LED: could not set value of LED GPIO" << std::endl;
            mHasError = true;
        }

        close(mGpio);
    }

    std::string path = "/sys/class/gpio/unexport";
    int device = open(path.c_str(), O_WRONLY);
    if (device < 0) {
        LogErr << "PS_LED: could not open unexport file" << std::endl;
        mHasError = true;
        return;
    }

    std::string gpioNumberStr = std::to_string(mGpioNumber);
    int bytes = write(device, gpioNumberStr.c_str(), gpioNumberStr.length());
    if (static_cast<std::size_t>(bytes) != gpioNumberStr.length()) {
        LogErr << "PS_LED: could not unexport LED GPIO. Proboably already done!" << std::endl;
    }

    close(device);
}


PsLed &PsLed::getInstance() {
    static PsLed instance;
    return instance;
}

bool PsLed::hasErrorImpl() {
    return mHasError;
}

bool PsLed::hasError() {
    PsLed &ref = PsLed::getInstance();
    return ref.hasErrorImpl();
}

} // gpio
} // components
} // simpleneutron
