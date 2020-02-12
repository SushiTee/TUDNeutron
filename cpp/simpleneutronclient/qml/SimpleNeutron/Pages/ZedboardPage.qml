import QtQuick 2.14
import QtQuick.Controls 2.14
import SimpleNeutron.Components 1.0
import SimpleNeutron.Network 1.0
import SimpleNeutron.MessageType 1.0
import SimpleNeutron.Utils 1.0

import "qrc:/js/db.js" as DB

Page {
    id: root

    property bool sensorsSelected: false
    width: parent ? parent.width : 0
    height: parent ? parent.height : 0
    title: {
        if (NetworkController.connected === MessageType.CONNECTING) return `Connecting to Zedboard (Host: ${NetworkController.host}:${NetworkController.port})`;
        if (NetworkController.connected === MessageType.CONNECTED) return `Connected to Zedboard (Host: ${NetworkController.host}:${NetworkController.port})`;
        return "";
    }

    onGoBack: {
        NetworkController.networkDisconnect();
    }

    function getActiveSensors() {
        for (let i = 0; i < NetworkController.sensors.length; i++) {
            if (NetworkController.sensors[i] === true) {
                listModel.append({num: i, name: `Sensor ${i+1}`, selected: false, count: 0, full: false});
            }
        }
    }

    function setSensorData(sensorData) {
        for (let i = 0; i < sensorData.length; i++) {
            for (let j = 0; j < listModel.count; j++) {
                if (listModel.get(j).num === i) {
                    listModel.get(j).count = parseInt(sensorData[i]);
                    break;
                }
            }
        }
    }

    BusyIndicator {
        id: busyIndicator
        anchors.centerIn: parent
        running: NetworkController.connected !== MessageType.CONNECTED
        visible: running
    }

    Timer {
        id: sensroDataTimer
        interval: 500
        repeat: true
        onTriggered: {
            setSensorData(NetworkController.sensorData);
        }
    }

    ListModel {
        id: listModel
        Component.onCompleted: {
            getActiveSensors();
        }
    }

    Connections {
        target: NetworkController

        onSensorsChanged: { // list sensors
            if (listModel.count > 0) {
                listModel.clear();
            }

            getActiveSensors()
        }

        onDmaFull: { // int dma
            if (dma === -1) {
                Globals.mainWindow.dialog.title = "Sensor buffer full";
                Globals.mainWindow.dialog.message = "Recevied a sensor buffer full message without any information which sensor.";
                Globals.mainWindow.dialog.open();
                stackView.reset();
                return;
            }

            for (let i = 0; i < listModel.count; i++) {
                if (listModel.get(i).num === dma) {
                    listModel.get(i).full = true;
                    break;
                }
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
                opacity: model.full ? 0.5 : 1.0

                CheckBox {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    checked: model.selected
                    text: model.full ? model.name + " (full)" : model.name
                    enabled: !NetworkController.sensorsActive

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
                    color: model.full ? "red" : "black"
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
                        if (!NetworkController.storageWritable()) {
                            Globals.mainWindow.dialog.title = "Location not writable";
                            Globals.mainWindow.dialog.message = "The selected storage location is not writable. Please enter the settings page and select a different location.";
                            Globals.mainWindow.dialog.open();
                            stackView.reset();
                            return;
                        }

                        let list = Array(8).fill(false);
                        for (let i = 0; i < list.length; i++) {
                            list[i] = false;
                            for (let j = 0; j < listModel.count; j++) {
                                if (listModel.get(j).num === i && listModel.get(j).selected) {
                                    list[i] = listModel.get(j).selected;
                                    break;
                                }
                            }
                        }
                        for (let i = 0; i < listModel.count; i++) {
                            listModel.get(i).count = 0;
                            listModel.get(i).full = false;
                        }

                        sensroDataTimer.start();

                        NetworkController.activateSensors(list);
                    } else {
                        sensroDataTimer.stop();

                        NetworkController.deactivateSensors();
                        setSensorData(NetworkController.sensorData);
                    }
                }
            }
        }
    }

    Component.onCompleted: {
        NetworkController.networkConnect();
    }
}
