import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12

Item {
    width: 400
    height: 400
    property alias pokerMA: pokerMA
    property alias backgammmonMA: backgammmonMA
    Page {
        background: Image {
            source: "qrc:/graphics/index-bg"
            fillMode: Image.PreserveAspectCrop
        }

        id: page
        anchors.fill: parent
        Column {
            id: column
            anchors.fill: parent
            Row {
                width: parent.width
                height: parent.height * 0.15
            }
            Row {
                width: parent.width * 0.90

                height: parent.height * 0.75
                anchors.horizontalCenter: parent.horizontalCenter
                layoutDirection: Qt.RightToLeft
                Rectangle {
                    width: parent.width / 3
                    height: parent.height
                    color: "transparent"
                    Image {
                        id: backgammmonImg
                        height: parent.height * 0.8
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                        source: "qrc:/graphics/checkers-closed"
                    }
                    MouseArea {
                        id: backgammmonMA
                        anchors.fill: parent
                    }
                }
                Rectangle {
                    width: parent.width / 3
                    height: parent.height
                    color: "transparent"
                    Image {
                        id: showActiveGamesContainer
                        width: parent.width * 0.8
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                        source: "qrc:/graphics/grey-transparent-bar-2"
                        MouseArea {
                            id: showActiveGamesBtn
                            anchors.fill: parent
                        }
                        Text {
                            id: name
                            anchors.centerIn: parent
                            font.pixelSize: parent.height * 0.30
                            color: "yellow"
                            text: qsTr("بازیکنان منتظر در میز")
                        }
                    }
                }
                Rectangle {
                    width: parent.width / 3
                    height: parent.height
                    color: "transparent"
                    Image {
                        id: pokerImg
                        height: parent.height * 0.8
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                        source: "qrc:/graphics/cards-batch"
                    }
                    MouseArea {
                        id: pokerMA
                        anchors.fill: parent
                    }
                }
            }
            Row {
                width: parent.width
                height: parent.height * 0.10
            }
        }
    }
}










/*##^## Designer {
    D{i:0;height:350;width:800}
}
 ##^##*/
