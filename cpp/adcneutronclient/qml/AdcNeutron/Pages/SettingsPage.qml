import QtQuick 2.14
import QtQuick.Controls 2.14
import Qt.labs.platform 1.1
import AdcNeutron.Components 1.0
import AdcNeutron.Network 1.0
import AdcNeutron.Utils 1.0
import "qrc:/js/db.js" as DB

Page {
    id: root
    width: parent ? parent.width : 0
    height: parent ? parent.height : 0
    title: "Settings"

    property string host: DB.getHost();
    property string port: DB.getPort();
    property bool inputTrigger: DB.getInputTrigger();
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
        if (inputTrigger !== inputTriggerCheckBox.checked) {
            DB.setInputTrigger(inputTriggerCheckBox.checked);
            console.info("Wait for input trigger changed to:", inputTriggerCheckBox.checked);
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

    FolderDialog {
        id: folderDialog
        title: "Select storage location"
        folder: StandardPaths.standardLocations(StandardPaths.DownloadLocation)[0]
        property string selectedFolder: storageLocation
        onAccepted: {
            let selected = currentFolder.toString();
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
                            Globals.mainWindow.dialog.message = "In this location the measurement is stored.\nThe format is pure binary. Every 4 byte consist of 4 bits which present the sensor number (0 bis 7). 0 is Sensor 1, 1 is Sensor 2 and so on. The following 28 bit are two values of the sensor. the first 14 bit are the first value and the last 14 bit the value after.\nIf the value is 00000000000000 the value is -1V. If it is 11111111111111 The value is +1V. So 10000000000000 stands for 0V.";
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
            }
        }
    }
}
