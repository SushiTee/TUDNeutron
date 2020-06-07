import QtQuick 2.14
import QtQuick.Controls 2.14
import Qt.labs.platform 1.1
import QtQuick.Dialogs 1.2
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
                }

                CheckBox {
                    id: inputTriggerCheckBox
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Wait for input trigger"
                    checked: inputTrigger
                }
            }
        }
    }
}
