import QtQuick 2.4
import QtQuick.Controls 2.12

Item {
    width: 400
    height: 400
    property alias backBtn: backBtn

    Page {
        id: page
        anchors.fill: parent
        background: Image {
            anchors.fill: parent
            fillMode: Image.Stretch
            source: "qrc:/graphics/auth-bg"
        }
        Row {
            anchors.fill: parent
            spacing: 0
            GameInfo {
                width: parent.width * 0.25
                height: parent.height
            }
            GameTable {
                width: parent.width * 0.75
                height: parent.height
            }
        }
        Image {
            source: "qrc:/graphics/left-arrow"
            y: 15
            anchors.left: parent.left
            anchors.leftMargin: 15
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            MouseArea {
                id: backBtn
                anchors.fill: parent
            }
            z: 2
        }
    }
}




/*##^## Designer {
    D{i:0;height:350;width:800}D{i:6;anchors_x:15}D{i:1;anchors_height:200;anchors_width:200;anchors_x:27;anchors_y:112}
}
 ##^##*/
