import QtQuick 2.4
import QtQuick.Controls 2.3

Item {
    width: 400
    height: 400
    property alias courtPiecGameStackView: courtPiecGameStackView
    property alias backBtn: backBtn
    StackView {
        id: courtPiecGameStackView
        anchors.fill: parent
        Page {
            id: page
            anchors.fill: parent
            background: Image {
                anchors.fill: parent
                fillMode: Image.Stretch
                source: "qrc:/graphics/auth-bg"
            }
            Image {
                source: "qrc:/graphics/left-arrow"
                x: 15
                y: 15
                MouseArea {
                    id: backBtn
                    anchors.fill: parent
                }
            }

            Column {
                anchors.centerIn: parent
                width: parent.width * 0.8
                height: parent.height * 0.8
                Rectangle {
                    width: parent.width * 0.5
                    height: parent.height * 0.3
                    anchors.horizontalCenter: parent.horizontalCenter
                    color: "transparent"
                    Image {
                        anchors.centerIn: parent
                        source: "qrc:/graphics/grey-transparent-bar"
                        Text {
                            text: qsTr("در انتظار تایید")
                            color: "white"
                            font.pixelSize: 15
                            anchors.centerIn: parent
                        }
                    }
                }

                Row {
                    height: parent.height * 0.7
                    width: parent.width
                    id: row
                    Rectangle {
                        width: parent.width / 3
                        height: parent.height
                        color: "transparent"
                        PlayerInfo {
                            width: parent.width
                            height: parent.height
                        }
                    }
                    Rectangle {
                        width: parent.width / 3
                        height: parent.height
                        color: "transparent"
                        GameDetails {
                            width: parent.width
                            height: parent.height
                        }
                    }
                    Rectangle {
                        width: parent.width / 3
                        height: parent.height
                        color: "transparent"
                        PlayerInfo {
                            width: parent.width
                            height: parent.height
                        }
                    }
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:350;width:800}
}
##^##*/

