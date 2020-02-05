import QtQuick 2.14
import QtQuick.Controls 2.14
import SimpleNeutron.Components 1.0
import SimpleNeutron.Network 1.0

import "qrc:/js/db.js" as DB

Page {
    id: root

    property bool sensorsSelected: false
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

    BusyIndicator {
        id: busyIndicator
        anchors.centerIn: parent
        running: NetworkController.connected !== NetworkController.CONNECTED || !NetworkController.packageSizeTransmitted
        visible: running
    }

    ListModel {
        id: listModel
        Component.onCompleted: {
            for (let i = 0; i < 8; i++) {
                listModel.append({name: `Sensor ${i+1}`, selected: false, count: 0});
            }
        }
    }

    Connections {
        target: NetworkController

        onSensorResult: { // list sensorData
            console.info("Sensordata:", sensorData);
            for (let i = 0; i < listModel.count; i++) {
                listModel.get(i).count = sensorData[i];
            }
        }
    }

    Item {
        anchors.fill: parent
        visible: !busyIndicator.running

        Item {
            id: header
            width: parent.width
            height: 50

            Label {
                anchors.centerIn: parent
                text: "Select sensors"
            }
        }

        GridView {
            id: listView
            anchors.top: header.bottom
            anchors.bottom: footer.top
            anchors.horizontalCenter: parent.horizontalCenter
            cellHeight: 50
            cellWidth: 200
            width: 400
            clip: true
            interactive: contentHeight > height

            model: listModel

            delegate: Item {
                width: 200
                height: 50

                CheckBox {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    checked: model.selected
                    text: model.name

                    onCheckedChanged: {
                        model.selected = checked;
                        if (checked) {
                            root.sensorsSelected = true;
                        } else {
                            let foundSelected = false;
                            for (let i = 0; i < listModel.count; i++) {
                                if (listModel.get(i).selected) {
                                    foundSelected = true;
                                    break;
                                }
                            }
                            if (!foundSelected) {
                                root.sensorsSelected = false;
                            }
                        }
                    }
                }
                Label {
                    text: "Count: " + model.count
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                }
            }
        }

        Item {
            id: footer
            width: parent.width
            height: 50
            anchors.bottom: parent.bottom

            Button {
                text: NetworkController.sensorsActive ? "Stop measuement" : "Start measurement"
                anchors.horizontalCenter: parent.horizontalCenter
                enabled: sensorsSelected || NetworkController.sensorsActive

                onClicked: {
                    if (!NetworkController.sensorsActive) {
                        let list = Array(8).fill(false);
                        for (let i = 0; i < list.length; i++) {
                            list[i] = listModel.get(i).selected;
                        }
                        NetworkController.activateSensors(list);
                    } else {
                        NetworkController.deactivateSensors();
                    }
                }
            }
        }
    }

    Component.onCompleted: {
        NetworkController.host = DB.getHost();
        NetworkController.port = DB.getPort();
        NetworkController.connect();
    }
}
