import QtQuick 2.0
import QtQml.Models 2.15
Item {
    id: keyboard

    ListModel
    {
        id: model
        ListElement {controltext:"1"}
        ListElement {controltext:"2"}
        ListElement {controltext:"3"}
        ListElement {controltext:"ESC"}
        ListElement {controltext:"4"}
        ListElement {controltext:"5"}
        ListElement {controltext:"6"}
        ListElement {controltext:"PgUp"}
        ListElement {controltext:"7"}
        ListElement {controltext:"8"}
        ListElement {controltext:"9"}
        ListElement {controltext:"PgDn"}
        ListElement {controltext:"Clear"}
        ListElement {controltext:"0"}
        ListElement {controltext:"."}
        ListElement {controltext:"Enter"}
    }
    GridView
    {
        id: numbericKeyboard
        anchors.fill: keyboard
        model: model
        cellWidth: 60
        cellHeight: 60
        interactive: false
        delegate: InputBox {
            nameButton: controltext
        }
    }
}
