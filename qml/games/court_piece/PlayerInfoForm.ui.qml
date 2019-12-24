import QtQuick 2.4
import QtQuick.Controls 2.12

Item {
    width: 400
    height: 400
    Image {
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
}
