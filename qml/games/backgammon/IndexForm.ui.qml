import QtQuick 2.4
import QtQuick.Controls 2.12

Item {
    width: 400
    height: 400

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
            Rectangle {
                width: parent.width * 0.25
                height: parent.height
            }
            Rectangle {
                width: parent.width * 0.75
                height: parent.height
                Image {
                    anchors.fill: parent
                    source: "qrc:/graphics/backgammon-bg-1"
                    fillMode: Image.Stretch
                }
            }
        }
    }
}




/*##^## Designer {
    D{i:0;height:350;width:800}D{i:1;anchors_height:200;anchors_width:200;anchors_x:27;anchors_y:112}
}
 ##^##*/
