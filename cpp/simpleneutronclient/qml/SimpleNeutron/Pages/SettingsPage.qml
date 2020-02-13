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
    title: qsTr("Settings")

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
            let selected = fileUrls[0].toString().replace("file:///", "");
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

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10
                    Label {
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Package Size"
                    }

                    ComboBox {
                        id: packageSizeBox
                        model: [...Array(16).keys()].map(x => 2 ** x)

                        Component.onCompleted: {
                            currentIndex = Math.min(Math.max(packageSize, 0), model.length);
                        }
                    }
                }

                CheckBox {
                    id: inputTriggerCheckBox
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Wait for input trigger"
                    checked: inputTrigger
                }

                CheckBox {
                    id: testGeneratorCheckBox
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Test (Sensor 8)"
                    checked: testGenerator
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
                }
            }
        }
    }
}
