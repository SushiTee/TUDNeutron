import QtQuick 2.14
import QtQuick.Controls 2.14
import SimpleNeutron.Components 1.0
import SimpleNeutron.Network 1.0

import "qrc:/js/db.js" as DB

Page {
    id: root
    width: parent ? parent.width : 0
    height: parent ? parent.height : 0
    title: {
        if (NetworkController.connected === NetworkController.CONNECTING) return `Connecting to Zedboard (Host: ${NetworkController.host}:${NetworkController.port})`;
        if (NetworkController.connected === NetworkController.CONNECTED) return `Connected to Zedboard (Host: ${NetworkController.host}:${NetworkController.port})`;
        return "";
    }

    onGoBack: {
        NetworkController.disconnect();
    }

    Connections {
        target: NetworkController

        onReceiveMessage: { // int type, Json message
            console.info("Type", type, "Message", JSON.stringify(jsonData));
        }
    }

    BusyIndicator {
        id: busyIndicator
        anchors.centerIn: parent
        running: NetworkController.connected !== NetworkController.CONNECTED || !NetworkController.packageSizeTransmitted
        visible: running
    }

    Column {
        width: parent.width
        anchors.centerIn: parent
        spacing: 10
        visible: !busyIndicator.running

        Button {
            text: "Start"
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                NetworkController.sendMessage(NetworkController.START_DMA, "Test");
            }
        }
    }

    Component.onCompleted: {
        NetworkController.host = DB.getHost();
        NetworkController.port = DB.getPort();
        NetworkController.connect();
    }
}
