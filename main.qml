import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "Components"

ApplicationWindow {
    property int cellWidth: 100
    property int cellHeight: 100

    id: appWindow
    width: 800
    height: Screen.height

    visible: true
    title: qsTr("Hello World")

    //    flags: Qt.FramelessWindowHint

    Image {
        id: backgroundView
        source: "image/background.png"
        width: parent.width
        height: parent.height/2
    }

    Text {
        id: txtHeader
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: backgroundView.bottom
        anchors.topMargin: 20
        text: "Nhập code vào đây"
        font.pixelSize: 30
        font.bold: true
    }
    Text {
        id: txtContent
        anchors.top: txtHeader.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: txtHeader.horizontalCenter
        text: "The code can be found in the ADELA App"
        font.pixelSize: 20
    }

    // Input boxes
    TextField {
        id: inputText
        height: 50
        width: keyboard.width
        anchors.top: txtContent.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: txtHeader.horizontalCenter
    }

    // keyboard
    KeyBoard {
        id: keyboard
        width: 60*4
        height: 60*4
        anchors.top: inputText.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: txtHeader.horizontalCenter
    }
}
