#include <iostream>
#include <unistd.h>
#include <cstring>
#include <fcntl.h>
#include <logger/logger.h>
#include <hwdevice/hwdevice.h>
#include <gpio/psled.h>

namespace adcneutron {
namespace components {
namespace gpio {

PsLed::PsLed()
{
    int device = open(PS_LED.mGpioExport, O_WRONLY);
    if (device < 0) {
        LogErr << "PS_LED: could not open export file" << std::endl;
        mHasError = true;
        return;
    }

    int bytes = write(device, PS_LED.mRegisterBit, std::strlen(PS_LED.mRegisterBit));
    if (bytes != std::strlen(PS_LED.mRegisterBit)) {
        LogErr << "PS_LED: could not export LED GPIO. Probably already done!" << std::endl;
    }

    close(device);

    device = open(PS_LED.mGpioDirection, O_WRONLY);
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

    mGpio = open(PS_LED.mGpioValue, O_WRONLY);
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

    int device = open(PS_LED.mGpioUnexport, O_WRONLY);
    if (device < 0) {
        LogErr << "PS_LED: could not open unexport file" << std::endl;
        mHasError = true;
        return;
    }

    int bytes = write(device, PS_LED.mRegisterBit, std::strlen(PS_LED.mRegisterBit));
    if (bytes != std::strlen(PS_LED.mRegisterBit)) {
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
} // adcneutron
