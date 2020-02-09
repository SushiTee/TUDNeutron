import QtQuick 2.14
import QtQuick.Controls 2.14
import SimpleNeutron.Components 1.0

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
        if (testSignalCount !== signalGeneratorCount.displayText) {
            DB.setTestSignalCount(signalGeneratorCount.displayText);
            console.info("Test signal count changed to:", signalGeneratorCount.displayText);
        }
    }

    Column {
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
                text: "Package Size"
            }

            ComboBox {
                id: packageSizeBox
                model: [...Array(13).keys()].map(x => 2 ** x)

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
                text: root.testSignalCount
                inputMethodHints: Qt.ImhFormattedNumbersOnly
                validator: IntValidator{bottom: 1; top: 127;}
            }

            Label {
                anchors.verticalCenter: parent.verticalCenter
                text: "x1000"
            }
        }
    }
}
