import QtQuick 2.14
import QtQuick.Controls 2.14
import AdcNeutron.Components 1.0
import AdcNeutron.Network 1.0
import AdcNeutron.Utils 1.0

Page {
    width: parent ? parent.width : 0
    height: parent ? parent.height : 0
    title: "Home"

    Column {
        width: parent.width
        anchors.centerIn: parent
        spacing: 10

        Button {
            text: "Start"
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                if (!NetworkController.storageWritable()) {
                    Globals.mainWindow.dialog.title = "Location not writable";
                    Globals.mainWindow.dialog.message = "The selected storage location is not writable. Please enter the settings page and select a different location.";
                    Globals.mainWindow.dialog.open();
                    return;
                }
                navigate("qrc:/AdcNeutron/Pages/ZedboardPage.qml");
            }
        }

        Button {
            text: "Settings"
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                navigate("qrc:/AdcNeutron/Pages/SettingsPage.qml");
            }
        }

        Button {
            text: "Quit"
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                Qt.callLater(Qt.quit)
            }
        }
    }
}
