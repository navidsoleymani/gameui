import QtQuick 2.4
import QtQuick.Controls 2.12

Item {
    width: 400
    height: 400
    property alias betText: betText
    Column {
        anchors.fill: parent
        Image {
            width: parent.width
            source: "qrc:/graphics/grey-transparent-bar"
            Image {
                source: "qrc:/graphics/dollar-sign"
                height: parent.height * 0.6
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 15
            }
            Text {
                id: betText
                text: qsTr("10K")
                color: "white"
                font.pixelSize: parent.height * 0.5
                anchors.centerIn: parent
            }
        }
        Image {
            width: parent.width
            source: "qrc:/graphics/grey-transparent-bar"
            Image {
                source: "qrc:/graphics/clock"
                height: parent.height * 0.6
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 15
            }
            Text {
                id: timeText
                text: qsTr("نرمال")
                color: "white"
                font.pixelSize: parent.height * 0.5
                anchors.centerIn: parent
            }
        }
        Image {
            width: parent.width
            source: "qrc:/graphics/grey-transparent-bar"
            Image {
                source: "qrc:/graphics/cards-batch"
                height: parent.height * 0.6
                width: height
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 15
            }
            Text {
                id: handsText
                text: qsTr("10")
                color: "white"
                font.pixelSize: parent.height * 0.5
                anchors.centerIn: parent
            }
        }
        Image {
            width: parent.width
            source: "qrc:/graphics/default-btn-bg-sharp"
            Text {
                anchors.centerIn: parent
                text: qsTr("لغو")
                font.pixelSize: parent.height * 0.5
            }
        }
    }
}
