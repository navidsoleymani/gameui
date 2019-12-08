import QtQuick 2.4
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12

Item {
    width: 400
    height: 400
    property alias drawerButtons: drawerButtons

    Column {
        id: column
        anchors.topMargin: 10
        spacing: 10
        anchors.fill: parent
        Image {
            id: avatarImg
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/drawer-img/4"
            fillMode: Image.PreserveAspectCrop
        }
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "نام کاربری"
        }

        ToolSeparator {
            id: toolSeparator
            width: parent.width
            clip: true
            orientation: Qt.Horizontal
        }
        ListView {
            layoutDirection: Qt.RightToLeft
            id: drawerButtons
            width: parent.width
            height: 160
            snapMode: ListView.SnapToItem
            clip: true
            anchors.horizontalCenter: parent.horizontalCenter
            ScrollIndicator.vertical: ScrollIndicator {
            }
        }
    }
}