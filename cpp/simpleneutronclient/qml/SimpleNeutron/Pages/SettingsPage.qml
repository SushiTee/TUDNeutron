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

    onGoBack: {
        if (host !== hostTextField.displayText) {
            DB.setHost(hostTextField.displayText);
            console.log("Host changed to:", hostTextField.displayText);
        }
        if (port !== portTextField.displayText) {
            DB.setPort(portTextField.displayText);
            console.log("Port changed to:", portTextField.displayText);
        }
        if (packageSize !== packageSizeBox.currentText) {
            DB.setPackageSize(packageSizeBox.currentText);
            console.log("Package size changed to:", packageSizeBox.currentText);
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
                inputMethodHints: Qt.ImhUrlCharactersOnly
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
                model: ["1", "2", "4", "16", "32", "64", "128", "256", "512", "1024", "2048", "4096"]

                Component.onCompleted: {
                    for (let i = 0; i < model.length; i++) {
                        if (model[i] === packageSize) {
                            currentIndex = i;
                            return;
                        }
                    }
                }
            }
        }
    }
}
