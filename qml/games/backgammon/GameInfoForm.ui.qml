import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.3

Item {
    id: element
    width: 400
    height: 400
    Image {
        id: bg
        source: "qrc:/graphics/backgammon-info-bg"
        anchors.fill: parent
        z: -1
    }
    Image {
        id: userAvatar
        width: parent.width * 0.25
        height: parent.width * 0.25
        source: "qrc:/drawer-img/4"
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Image {
        id: oponentAvatar
        width: parent.width * 0.25
        height: parent.width * 0.25
        source: "qrc:/drawer-img/1"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
    }
    Column {
        id: column
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Button {
            id: throwDice
            text: qsTr("انداختن تاس")
            anchors.horizontalCenter: parent.horizontalCenter
            highlighted: true
            Material.accent: Material.Brown
        }
        Button {
            id: cancelGame
            text: qsTr("لغو بازی")
            anchors.horizontalCenter: parent.horizontalCenter
            highlighted: true
            Material.accent: Material.Red
        }
    }
}
