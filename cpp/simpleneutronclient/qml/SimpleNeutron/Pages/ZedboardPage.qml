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
            NetworkController.requestSensorData();
        }
    }

    Timer {
        id: measurementTimer
        repeat: true
        interval: 10
        onTriggered: {
            if (runningTimer.stopTime > 0 && Date.now() >= runningTimer.stopTime) {
                NetworkController.deactivateSensors();

                sensroDataTimer.stop();

                setSensorData(NetworkController.sensorData);

                runningTimer.stop();
                runningTimer.reset();
            }
        }
    }

    Timer {
        id: runningTimer
        property real startTime: -1
        property real stopTime: -1

        function setData(time) {
            let now = Date.now();
            startTime = now;
            if (time) {
                let end = now + time;
                stopTime = end;
            }
        }

        function reset() {
            startTime = -1;
            stopTime = -1;
        }

        repeat: true
        interval: 100
        onTriggered: {
            let runningStr = '';
            let running = Date.now() - startTime;
            if (running > 3600000) {
                runningStr = parseInt(running / 3600000) + "h " + parseInt((running % 3600000) / 60000) + "min " + (parseInt(running % 60000) / 1000).toFixed(1) + "s";
            } else if (running > 60000) {
                runningStr = parseInt((running % 3600000) / 60000) + "min " + (parseInt(running % 60000) / 1000).toFixed(1) + "s";
            } else {
                runningStr = (parseInt(running % 60000) / 1000).toFixed(1) + "s";
            }
            runningLabel.text = runningStr;
            if (stopTime == -1) {
                remainingLabel.text = "infinite"
            } else {
                let remainingStr = '';
                let remaining = stopTime - Date.now();
                if (remaining > 3600000) {
                    remainingStr = parseInt(remaining / 3600000) + "h " + parseInt((remaining % 3600000) / 60000) + "min " + (parseInt(remaining % 60000) / 1000).toFixed(1) + "s";
                } else if (remaining > 60000) {
                    remainingStr = parseInt((remaining % 3600000) / 60000) + "min " + (parseInt(remaining % 60000) / 1000).toFixed(1) + "s";
                } else {
                    remainingStr = (parseInt(remaining % 60000) / 1000).toFixed(1) + "s";
                }
                remainingLabel.text = remainingStr;
            }
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

        onSensorData: { // list sensorData
            setSensorData(sensorData);
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
            anchors.bottom: timerItem.top
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
            id: runningItem
            height: 50
            width: parent.width
            anchors.bottom: footer.top

            visible: NetworkController.sensorsActive

            Row {
                anchors.centerIn: parent
                height: childrenRect.height
                spacing: 10

                Label {
                    text: "Running for:"
                }

                Label {
                    id: runningLabel
                }

                Label {
                    text: "Remaining time:"
                }

                Label {
                    id: remainingLabel
                }
            }
        }

        Item {
            id: timerItem
            height: 50
            width: parent.width
            anchors.bottom: footer.top

            visible: !NetworkController.sensorsActive

            Row {
                anchors.centerIn: parent
                height: timerComboBox.height
                spacing: 10

                CheckBox {
                    id: timerCheckbox
                    anchors.verticalCenter: parent.verticalCenter
                    text: "Timer"
                    checked: false
                }

                TextField {
                    id: timerTextField
                    enabled: timerCheckbox.checked
                    anchors.verticalCenter: parent.verticalCenter
                    text: "10"
                    inputMethodHints: Qt.ImhFormattedNumbersOnly
                }

                ComboBox {
                    id: timerComboBox
                    enabled: timerCheckbox.checked
                    model: ["ms", "s", "min", "h"]
                    currentIndex: 1
                }
            }
        }

        Item {
            id: footer
            width: parent.width
            height: 50
            anchors.bottom: parent.bottom

            Button {
                text: NetworkController.sensorsActive ? "Stop measurement" : "Start measurement"
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

                        if (timerCheckbox.checked) {
                            let timeVal = parseFloat(timerTextField.text);
                            if (timeVal <= 0) {
                                console.error("Timer should not be smaller than 0");
                                Globals.mainWindow.dialog.title = "Time value wrong";
                                Globals.mainWindow.dialog.message = "The value for the timer must be bigger than 0!";
                                Globals.mainWindow.dialog.open();
                                return;
                            }
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
                        if (timerCheckbox.checked) {
                            let timeVal = parseFloat(timerTextField.text);
                            switch (timerComboBox.currentIndex) {
                            case 0:
                                break;
                            case 1:
                                timeVal *= 1000;
                                break;
                            case 2:
                                timeVal *= 60000;
                                break;
                            case 3:
                                timeVal *= 3600000;
                            }
                            measurementTimer.start();
                            runningTimer.setData(timeVal);
                        } else {
                            runningTimer.setData();
                        }

                        runningTimer.start();
                    } else {
                        NetworkController.deactivateSensors();

                        measurementTimer.stop();
                        sensroDataTimer.stop();
                        runningTimer.stop();
                        runningTimer.reset();

                        NetworkController.requestSensorData();
                    }
                }
            }
        }
    }

    Component.onCompleted: {
        NetworkController.networkConnect();
    }
}
