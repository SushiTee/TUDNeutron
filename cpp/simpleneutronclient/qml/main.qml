import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.1
import SimpleNeutron.Pages 1.0
import SimpleNeutron.Network 1.0

import "qrc:/js/db.js" as DB

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("SimpleNeutron Client")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: "\u25C0"
            visible: stackView.depth > 1
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                stackView.goBack();
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    StackView {
        id: stackView
        initialItem: StartPage {
            stackView: stackView
        }

        anchors.fill: parent

        function goBack() {
            if (stackView.depth > 1) {
                stackView.currentItem.goBack();
                stackView.pop();
            }
        }

        function reset() {
            if (stackView.depth > 1) {
                stackView.currentItem.goBack();
                stackView.pop(null);
            }
        }
    }

    Connections {
        target: NetworkController

        onConnectedChanged: {
            if (NetworkController.connected === NetworkController.FAILED) {
                stackView.reset();
                messageDialog.open();
            }
        }
    }

    MessageDialog {
        id: messageDialog
        title: "Connection failes"
        text: "An error occured with the connection to the Zedboard or the connection could not be established.\n\n Check if the Zedboard is turned on and connected to the network."
        icon: StandardIcon.Warning
        onAccepted: {
            messageDialog.close();
        }
    }

    Component.onCompleted: {
        DB.dbInit();
    }
}
