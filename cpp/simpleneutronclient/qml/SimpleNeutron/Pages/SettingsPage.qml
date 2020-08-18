import QtQuick 2.14
import QtQuick.Controls 2.14
import Qt.labs.platform 1.1
import QtQuick.Dialogs 1.2
import SimpleNeutron.Components 1.0
import SimpleNeutron.Network 1.0
import SimpleNeutron.Utils 1.0
import "qrc:/js/db.js" as DB

Page {
    id: root
    width: parent ? parent.width : 0
    height: parent ? parent.height : 0
    title: "Settings"

    property string host: DB.getHost();
    property string port: DB.getPort();
    property string packageSize: DB.getPackageSize();
    property bool testGenerator: DB.getTestGenerator();
    property bool inputTrigger: DB.getInputTrigger();
    property string testSignalCount: DB.getTestSignalCount();
    property string testSignalFrequency: DB.getTestSignalFrequency();
    property string storageLocation: DB.getStorageLocation();

    onGoBack: {
        if (host !== hostTextField.displayText) {
            DB.setHost(hostTextField.displayText);
            console.info("Host changed to:", hostTextField.displayText);
        }
        if (port !== portTextField.displayText) {
            DB.setPort(portTextField.displayText);
            console.info("Port changed to:", portTextField.displayText);
        }
        if (packageSize !== packageSizeBox.currentIndex.toString()) {
            DB.setPackageSize(packageSizeBox.currentIndex.toString());
            console.info("Package size changed to:", 2 ** packageSizeBox.currentIndex);
        }
        if (testGenerator !== testGeneratorCheckBox.checked) {
            DB.setTestGenerator(testGeneratorCheckBox.checked);
            console.info("Test (Sensor 8) changed to:", testGeneratorCheckBox.checked);
        }
        if (inputTrigger !== inputTriggerCheckBox.checked) {
            DB.setInputTrigger(inputTriggerCheckBox.checked);
            console.info("Wait for input trigger changed to:", inputTriggerCheckBox.checked);
        }
        if (testSignalCount !== signalGeneratorCount.signalCount.toString()) {
            DB.setTestSignalCount(signalGeneratorCount.signalCount);
            console.info("Test signal count changed to:", signalGeneratorCount.signalCount);
        }
        if (testSignalFrequency !== signalGeneratorFrequency.actualFrequency.toString()) {
            DB.setTestSignalFrequency(signalGeneratorFrequency.actualFrequency);
            console.info("Test signal frequency changed to:", signalGeneratorFrequency.actualFrequency);
        }
        if (storageLocation !== folderDialog.selectedFolder) {
            DB.setStorageLocation(folderDialog.selectedFolder);
            console.info("Storage location changed to:", folderDialog.selectedFolder);
        }
    }

    Label {
        id: locationDummy
        text: storageLocation;
        visible: false
    }

    FileDialog {
        id: folderDialog
        title: "Select storage location"
        folder: StandardPaths.standardLocations(StandardPaths.DownloadLocation)[0]
        selectMultiple: false
        selectFolder: true
        property string selectedFolder: storageLocation
        onAccepted: {
            let selected = fileUrls[0].toString();
            if (Qt.platform.os === "windows") {
                selected = selected.replace("file:///", "");
            } else {
                selected = selected.replace("file://", "");
            }
            if (!NetworkController.storageWritable(selected)) {
                Globals.mainWindow.dialog.title = "Location not writable";
                Globals.mainWindow.dialog.message = "The selected storage location is not writable";
                Globals.mainWindow.dialog.open();
                return;
            }
            selectedFolder = selected
            locationDummy.text = selected;
            storageLocationLabel.text = selected;
        }
    }

    Flickable {
        id: flickable
        width: parent.width
        height: parent.height
        interactive: column.height > height
        contentHeight: column.height

        Item {
            width: parent.width
            height: flickable.interactive ? column.height : root.height

            Column {
                id: column
                width: parent.width
                anchors.centerIn: parent
                spacing: 10

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10
                    Label {
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Host"
                    }

                    TextField {
                        id: hostTextField
                        text: root.host
                        inputMethodHints: Qt.ImhUrlCharactersOnly
                    }

                    ToolButton {
                        text: "?"
                        font.pixelSize: Qt.application.font.pixelSize * 1.6
                        onClicked: {
                            Globals.mainWindow.dialog.title = "Host";
                            Globals.mainWindow.dialog.message = "The host name or IP of the Zedboard.";
                            Globals.mainWindow.dialog.open();
                        }
                    }
                }

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10
                    Label {
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Port"
                    }

                    TextField {
                        id: portTextField
                        text: root.port
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: IntValidator{bottom: 1; top: 65535;}
                    }

                    ToolButton {
                        text: "?"
                        font.pixelSize: Qt.application.font.pixelSize * 1.6
                        onClicked: {
                            Globals.mainWindow.dialog.title = "Port";
                            Globals.mainWindow.dialog.message = "The port of the Zedboard on which the server is running.";
                            Globals.mainWindow.dialog.open();
                        }
                    }
                }

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10
                    Label {
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Storage location"
                    }

                    Label {
                        id: storageLocationLabel
                        anchors.verticalCenter: parent.verticalCenter
                        text: storageLocation
                        width: locationDummy.width < 200 ? locationDummy.width : 200
                        elide: Text.ElideMiddle
                    }

                    Button {
                        text: "Select"
                        anchors.verticalCenter: parent.verticalCenter
                        onClicked: folderDialog.open()
                    }

                    ToolButton {
                        text: "?"
                        font.pixelSize: Qt.application.font.pixelSize * 1.6
                        onClicked: {
                            Globals.mainWindow.dialog.title = "Storage location";
                            Globals.mainWindow.dialog.message = "In this location the measurements of each sensor are stored.\nThe format is pure binary. Each 4 bytes represent one value. The resolution is 10 ns. This means if the value is 100 the signal occured 1000 ns after the previous value.";
                            Globals.mainWindow.dialog.open();
                        }
                    }
                }

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10
                    Label {
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Package Size"
                    }

                    ComboBox {
                        id: packageSizeBox
                        model: [...Array(14).keys()].map(x => 2 ** x)

                        Component.onCompleted: {
                            currentIndex = Math.min(Math.max(packageSize, 0), model.length);
                        }
                    }

                    ToolButton {
                        text: "?"
                        font.pixelSize: Qt.application.font.pixelSize * 1.6
                        onClicked: {
                            Globals.mainWindow.dialog.title = "Package Size";
                            Globals.mainWindow.dialog.message = "This sets the package size. E.g. if the package size is 16 there have to be 16 signals first before any data is written to the RAM. Only every 16 signals are stored into the RAM and can be received. This means that the the received Signal count is always divisible by 16 in this example. This also means if in total 31 signals occur and you stop the measurement you will not be able to receive the last 15 signals.";
                            Globals.mainWindow.dialog.open();
                        }
                    }
                }

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10

                    CheckBox {
                        id: inputTriggerCheckBox
                        text: "Wait for input trigger"
                        checked: inputTrigger
                    }

                    ToolButton {
                        text: "?"
                        font.pixelSize: Qt.application.font.pixelSize * 1.6
                        onClicked: {
                            Globals.mainWindow.dialog.title = "Wait for input trigger";
                            Globals.mainWindow.dialog.message = "After starting a measurment you will only start to receive signals after the external trigger input is HIGH. The input trigger needs to stay HIGH during the whole measurement.";
                            Globals.mainWindow.dialog.open();
                        }
                    }
                }

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10

                    CheckBox {
                        id: testGeneratorCheckBox
                        text: "Test (Sensor 8)"
                        checked: testGenerator
                    }

                    ToolButton {
                        text: "?"
                        font.pixelSize: Qt.application.font.pixelSize * 1.6
                        onClicked: {
                            Globals.mainWindow.dialog.title = "Test (Sensor 8)";
                            Globals.mainWindow.dialog.message = "This activates the test function of Sensor 8. It will still receive normal signals but also generate signals depending on the settings below. The generated signals will have an increasing number (0,1,2,3,4,5,6...). Like this it is possible to test if the incoming signals are stored correctly.";
                            Globals.mainWindow.dialog.open();
                        }
                    }
                }

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10
                    Label {
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Test signal count"
                    }

                    TextField {
                        id: signalGeneratorCount
                        property int signalCount: text ? parseInt(text) : 1
                        text: root.testSignalCount
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: IntValidator{bottom: 1; top: 2147483647;}
                    }

                    ToolButton {
                        text: "?"
                        font.pixelSize: Qt.application.font.pixelSize * 1.6
                        onClicked: {
                            Globals.mainWindow.dialog.title = "Test signal count";
                            Globals.mainWindow.dialog.message = "The count of signals the Sensor 8 will generate if the test for Sensor 8 is active.";
                            Globals.mainWindow.dialog.open();
                        }
                    }
                }

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10
                    Label {
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Test signal freq."
                    }

                    TextField {
                        id: signalGeneratorFrequency
                        property int actualFrequency: {
                            if (!text) return 1;
                            return parseInt(100000000 / parseInt(100000000 / parseInt(text)));
                        }
                        text: root.testSignalFrequency
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: IntValidator{bottom: 1; top: 50000000;}
                    }

                    Label {
                        id: signalGeneratorFrequencyLabel
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Actual: " + (signalGeneratorFrequency.actualFrequency+'').replace(/\B(?=(\d{3})+(?!\d))/g, '\u202F') + "Hz"; // use thin space after 3 digits
                    }

                    ToolButton {
                        text: "?"
                        font.pixelSize: Qt.application.font.pixelSize * 1.6
                        onClicked: {
                            Globals.mainWindow.dialog.title = "Test signal frequency";
                            Globals.mainWindow.dialog.message = "The signal frequency of signals the Sensor 8 will generate if the test for Sensor 8 is active.";
                            Globals.mainWindow.dialog.open();
                        }
                    }
                }
            }
        }
    }
}
