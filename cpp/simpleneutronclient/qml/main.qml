import QtQuick 2.14
import QtQuick.Controls 2.14
import SimpleNeutron.Pages 1.0
import SimpleNeutron.Network 1.0
import SimpleNeutron.MessageType 1.0
import SimpleNeutron.Utils 1.0
import SimpleNeutron.Version 1.0
import QtQuick.LocalStorage 2.12 // needed so the sql plugin is deployed

import "qrc:/js/db.js" as DB

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: "SimpleNeutron Client"

    property alias dialog: messageDialog

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

        ToolButton {
            id: helpButton
            anchors.right: parent.right
            text: "?"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                messageDialog.title = "About"
                if (Qt.platform.os === "windows") {
                    messageDialog.message = `Application icon by Retinaicons from flaticon.com\n\nVersion: ${Version.version} Build: ${Version.buildTime}`;
                } else {
                    messageDialog.message = `Version: ${Version.version} Build: ${Version.buildTime}`;
                }

                messageDialog.open();
            }
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
                stackView.currentItem.validate();
                if (stackView.currentItem.backValid) {
                    stackView.currentItem.goBack();
                    stackView.pop();
                }
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

        function onConnectedChanged(connected) {
            if (NetworkController.connected === MessageType.FAILED) {
                stackView.reset();
                messageDialog.title = "Connection failed"
                messageDialog.message = "An error occured with the connection to the Zedboard or the connection could not be established.\n\nCheck if the Zedboard is turned on and connected to the network."
                messageDialog.open();
            }
        }

        function onNetworkDataError(message) {
            stackView.reset();
            messageDialog.title = "Connection failed"
            messageDialog.message = message;
            messageDialog.open();
        }
    }

    Dialog {
        id: messageDialog

        property string message: ""

        parent: Overlay.overlay
        width: parent.width - 20
        x: parent ? ((parent.width - width) / 2) : 0
        y: parent ? ((parent.height - height) / 2) : 0

        title: "Connection failed"
        modal: true
        standardButtons: Dialog.Ok
        contentItem: Item {
            implicitWidth: 400
            implicitHeight: 100
            Label {
                width: parent.width
                wrapMode: Text.WordWrap
                text: messageDialog.message
                anchors.centerIn: parent
            }
        }

        onAccepted: {
            messageDialog.close();
        }
    }

    Component.onCompleted: {
        Globals.mainWindow = window;
        DB.dbInit();
    }
}
