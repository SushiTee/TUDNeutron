import QtQuick 2.14
import QtQuick.Controls 2.14
import AdcNeutron.Components 1.0
import AdcNeutron.Network 1.0
import AdcNeutron.MessageType 1.0
import AdcNeutron.Utils 1.0

import "qrc:/js/db.js" as DB

Page {
    id: root

    property bool sensorsSelected: false
    property int meanCount: parseInt(DB.getMeanCount());
    property int trigger: parseInt(DB.getTrigger());
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
                listModel.append({num: i, name: `Sensor ${i+1}`, selected: false, voltage: 0, count: 0});
            }
        }
    }

    function setSensorData(sensorData) {
        for (let i = 0; i < sensorData.length; i++) {
            for (let j = 0; j < listModel.count; j++) {
                if (listModel.get(j).num === i) {
                    listModel.get(j).voltage = sensorData[i];
                    break;
                }
            }
        }
    }

    function setSensorCount(sensorCount) {
        for (let i = 0; i < sensorCount.length; i++) {
            for (let j = 0; j < listModel.count; j++) {
                if (listModel.get(j).num === i) {
                    listModel.get(j).count = sensorCount[i];
                    break;
                }
            }
        }
    }

    function deactivateSensors() {
        NetworkController.deactivateSensors();

        measurementTimer.stop();
        sensorDataTimer.stop();
        runningTimer.stop();
        runningTimer.reset();

        NetworkController.requestSensorData();
    }

    BusyIndicator {
        id: busyIndicator
        anchors.centerIn: parent
        running: NetworkController.connected !== MessageType.CONNECTED
        visible: running
    }

    Timer {
        id: sensorDataTimer
        interval: 500
        repeat: true
        onTriggered: {
            NetworkController.requestSensorData();
            NetworkController.requestSensorCount();
        }
    }

    Timer {
        id: measurementTimer
        repeat: true
        interval: 10
        onTriggered: {
            if (runningTimer.stopTime > 0 && Date.now() >= runningTimer.stopTime) {
                root.deactivateSensors();
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

    ListModel {
        id: settingsListModel

        ListElement {
            settingsName: "Input trigger:"
            value: "inputTrigger"
        }
    }

    Connections {
        target: NetworkController

        function onSensorsChanged(sensors) {
            if (listModel.count > 0) {
                listModel.clear();
            }

            getActiveSensors();
        }

        function onDmaFull(dma) {
            Globals.mainWindow.dialog.title = "Sensor buffer full";
            Globals.mainWindow.dialog.message = "Buffer run full. The network connection might be too slow or too many sensors are active.";
            Globals.mainWindow.dialog.open();
            root.deactivateSensors();
        }

        function onSensorData(sensorData) {
            setSensorData(sensorData);
        }

        function onSensorCount(sensorCount) {
            setSensorCount(sensorCount);
        }

        function onMeanCountChanged(meanCount) {
            console.log("mean count:", meanCount);
        }

        function onTriggerChanged(trigger) {
            console.log("trigger:", trigger);
        }
    }

    Item {
        anchors.fill: parent
        visible: !busyIndicator.running

        Item {
            id: settingsHeader
            width: parent.width
            height: 50

            Label {
                anchors.centerIn: parent
                text: "Settings"
                font.bold: true
            }
        }

        ListView {
            id: settings
            anchors.top: settingsHeader.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            width: 400
            height: contentHeight
            interactive: false

            model: settingsListModel

            delegate: Item {
                width: settings.width
                height: childrenRect.height

                Row {
                    spacing: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    Label {
                        text: settingsName
                    }

                    Label {
                        text: NetworkController[value] ? "Yes" : "No"
                    }
                }
            }
        }

        Item {
            id: gridHeader
            anchors.top: settings.bottom
            width: parent.width
            height: 50

            Label {
                anchors.centerIn: parent
                text: "Select sensors"
                font.bold: true
            }
        }

        GridView {
            id: listView
            anchors.top: gridHeader.bottom
            anchors.bottom: timerItem.top
            anchors.horizontalCenter: parent.horizontalCenter
            cellHeight: 70
            cellWidth: 200
            width: 400
            clip: true
            interactive: contentHeight > height

            model: listModel

            delegate: Item {
                width: listView.cellWidth
                height: listView.cellHeight
                opacity: 1.0

                CheckBox {
                    id: sensorCheckbox
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    checked: model.selected
                    text: model.name
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
                Column {
                    width: parent.width
                    anchors.top: sensorCheckbox.bottom
                    anchors.topMargin: -10

                    Label {
                        text: "Voltage: " + parseFloat(model.voltage).toFixed(6) + "V"
                        anchors.horizontalCenter: parent.horizontalCenter

                        color: "black"
                    }
                    Label {
                        text: "Count: " + parseInt(model.count)
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: "black"
                    }
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

        Column {
            id: timerItem
            width: parent.width
            anchors.bottom: footer.top

            visible: !NetworkController.sensorsActive

            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                height: timerCheckbox.height
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

            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                height: timerCheckbox.height
                spacing: 10

                Label {
                    anchors.verticalCenter: parent.verticalCenter
                    text: "Mean count"
                }

                TextField {
                    id: meanCountLabel
                    anchors.verticalCenter: parent.verticalCenter
                    text: root.meanCount
                    inputMethodHints: Qt.ImhFormattedNumbersOnly
                    validator: IntValidator{bottom: 2; top: 2000;}
                    onDisplayTextChanged: {
                        if (acceptableInput) {
                            root.meanCount = parseInt(displayText);
                            DB.setMeanCount(displayText);
                        }
                    }
                }

                Item {
                    width: childrenRect.width
                    height: childrenRect.height

                    ToolButton {
                        anchors.left: parent.left
                        anchors.leftMargin: -20
                        text: "?"
                        font.pixelSize: Qt.application.font.pixelSize * 1.6
                        onClicked: {
                            Globals.mainWindow.dialog.title = "Mean count";
                            Globals.mainWindow.dialog.message = 'Is the number of values which are used for a running mean. ' +
                                                                'This smoothes the recorded values to filter before triggering a count.\n\n' +
                                                                'Value range: 2 to 2000';
                            Globals.mainWindow.dialog.open();
                        }
                    }
                }



                Label {
                    anchors.verticalCenter: parent.verticalCenter
                    text: "Trigger"
                }

                TextField {
                    id: triggerLabel
                    anchors.verticalCenter: parent.verticalCenter
                    text: root.trigger
                    inputMethodHints: Qt.ImhFormattedNumbersOnly
                    validator: IntValidator{bottom: 2; top: 1000;}
                    onDisplayTextChanged: {
                        if (acceptableInput) {
                            root.trigger = parseInt(displayText);
                            DB.setTrigger(displayText);
                        }
                    }
                }

                Item {
                    width: childrenRect.width
                    height: childrenRect.height

                    ToolButton {
                        anchors.left: parent.left
                        anchors.leftMargin: -20
                        text: "?"
                        font.pixelSize: Qt.application.font.pixelSize * 1.6
                        onClicked: {
                            Globals.mainWindow.dialog.title = "Trigger";
                            Globals.mainWindow.dialog.message = 'This is the value for the trigger. The Trigger is dynamic so impulses upon ' +
                                                                'other impulses may be detected. The value is a discrete value of the 14 bit ADC.\n\n' +
                                                                'Value range: 2 to 1000';
                            Globals.mainWindow.dialog.open();
                        }
                    }
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
                            for (let j = 0; j < listModel.count; j++) {
                                if (listModel.get(j).num === i && listModel.get(j).selected) {
                                    list[i] = listModel.get(j).selected;
                                    break;
                                }
                            }
                        }
                        for (let i = 0; i < listModel.count; i++) {
                            listModel.get(i).voltage = 0;
                            listModel.get(i).count = 0;
                        }

                        sensorDataTimer.start();

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
                        root.deactivateSensors();
                    }
                }
            }
        }
    }

    Component.onCompleted: {
        NetworkController.networkConnect();
    }
}
