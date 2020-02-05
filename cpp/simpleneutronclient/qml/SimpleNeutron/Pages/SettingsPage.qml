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
    }
}
