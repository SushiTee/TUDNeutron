import QtQuick 2.14
import QtQuick.Controls 2.14

Page {
    width: 600
    height: 400

    property StackView stackView
    property bool backValid: true

    signal goBack()
    signal validate()

    function navigate(page, properties) {
        if (!properties) properties = {};
        let component = Qt.createComponent(page);
        properties['stackView'] = stackView;
        stackView.push(component, properties);
    }
}
