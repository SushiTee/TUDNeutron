QT += quick

CONFIG += c++17 qtquickcompiler

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += \
        "$$PWD/cpp"

SOURCES += \
        "$$PWD/cpp/src/networkcontroller.cpp" \
        "$$PWD/cpp/src/networkhandler.cpp" \
        "$$PWD/cpp/src/messagetype.cpp" \
        "$$PWD/cpp/main.cpp" \
        "$$PWD/cpp/src/version.cpp"

HEADERS += \
        "$$PWD/cpp/networkcontroller.h" \
        "$$PWD/cpp/networkhandler.h" \
        "$$PWD/cpp/messagetype.h" \
        "$$PWD/cpp/messagetype.h" \
        "$$PWD/cpp/version.h" \
        "$$PWD/cpp/meanring.h"

RESOURCES += "$$PWD/qml/qml.qrc" \
        "$$PWD/js/js.qrc"

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = "$$PWD/qml"

win32 {
    LIBS += -lws2_32

    CONFIG(release, debug|release) {
        BUILDTYPE = "release"
        QMAKE_POST_LINK += "$$getenv(QTDIR)/bin/windeployqt --$$BUILDTYPE --no-translations --qmldir $$PWD/qml $$BUILDTYPE/$${TARGET}.exe"
    }

    RC_ICONS = "$$PWD/icon/nuclear.ico"
}

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
