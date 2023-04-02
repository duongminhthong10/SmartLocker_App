import QtQuick 2.0
import QtQuick.Controls 2.0

Button {
    property alias nameButton: nameButton.text
    width: 50
    height: 50
    background : Rectangle {
        anchors.fill: parent
        color: (pressed || checked) ? "blue " : "transparent"
        border.width: 3
        border.color: "black"
        Text {
            id: nameButton
            anchors.centerIn: parent
        }
    }
}

