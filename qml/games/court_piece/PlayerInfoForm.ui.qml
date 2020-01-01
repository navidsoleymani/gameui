import QtQuick 2.4
import QtQuick.Controls 2.12

Item {
    width: 400
    height: 400
    Image {
        id: img1
        anchors.horizontalCenter: parent.horizontalCenter
        source: "qrc:/graphics/player-details-border"
        z: 1
        Image {
            width: parent.width * 0.7
            height: parent.height * 0.7
            id: playerProfile
            anchors.centerIn: parent
            source: "qrc:/drawer-img/1"
        }
    }
    Image {
        anchors.top: img1.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: img1.width
        source: "qrc:/graphics/grey-transparent-bar-2"
        Text {
            id: playerName
            text: qsTr("نام بازیکن")
            font.pixelSize: parent.height * 0.3
            color: "white"
            anchors.centerIn: parent
        }
    }
}
