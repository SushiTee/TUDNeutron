import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.1
import SimpleNeutron.Pages 1.0
import SimpleNeutron.Network 1.0
import SimpleNeutron.MessageType 1.0
import QtQuick.LocalStorage 2.12 // needed so the sql plugin is deployed

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
            if (NetworkController.connected === MessageType.FAILED) {
                stackView.reset();
                messageDialog.message = "An error occured with the connection to the Zedboard or the connection could not be established.\n\nCheck if the Zedboard is turned on and connected to the network."
                messageDialog.open();
            }
        }

        onNetworkDataError: { // string message
            stackView.reset();
            messageDialog.message = message;
            messageDialog.open();
        }
    }

    Dialog {
        id: messageDialog

        property string message: ""

        anchors.centerIn: parent
        width: parent.width - 20
        title: "Connection failed"
        modal: true
        standardButtons: StandardButton.Ok
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
        DB.dbInit();
    }
}
