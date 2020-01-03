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
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Row {
                width: parent.width * 0.90
                height: parent.height * 0.60
                anchors.horizontalCenter: parent.horizontalCenter
                layoutDirection: Qt.RightToLeft
                Rectangle {
                    width: parent.width / 3
                    height: parent.height
                    color: "transparent"
                    Image {
                        id: backgammmonImg
                        height: parent.height
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
                        height: parent.height
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
            Column {
                width: parent.width
                height: parent.height * 0.25
                anchors.horizontalCenter: parent.horizontalCenter
                Image {
                    height: parent.height * 0.5
                    width: parent.width
                    source: "qrc:/graphics/footer-line"
                }
                Row {
                    width: parent.width * 0.9
                    height: parent.height * 0.5
                    anchors.horizontalCenter: parent.horizontalCenter
                    Row {
                        width: parent.width / 3
                        height: parent.height
                        spacing: width * 00.06
                        Image {
                            width: parent.width * 0.47
                            height: parent.height * 0.9
                            source: "qrc:/graphics/text-input-bg-black"
                            Text {
                                anchors.centerIn: parent
                                font.pixelSize: parent.height * 0.30
                                color: "yellow"
                                text: qsTr("تنظیمات")
                            }
                        }
                        Image {
                            width: parent.width * 0.47
                            height: parent.height * 0.9
                            source: "qrc:/graphics/text-input-bg-black"
                            Text {
                                anchors.centerIn: parent
                                font.pixelSize: parent.height * 0.30
                                color: "yellow"
                                text: qsTr("تراکنش ها")
                            }
                        }
                    }

                    Rectangle {
                        width: parent.width / 3
                        height: parent.height * 0.9
                        color: "transparent"
                        Row {
                            height: parent.height
                            anchors.horizontalCenter: parent.horizontalCenter
                            Image {
                                id: image
                                height: parent.height * 0.9
                                width: 50
                                fillMode: Image.PreserveAspectFit
                                source: "qrc:/graphics/telegram"
                            }
                            Image {
                                height: parent.height * 0.9
                                width: 50
                                fillMode: Image.PreserveAspectFit
                                source: "qrc:/graphics/instagram"
                            }
                        }
                    }
                    Row {
                        width: parent.width / 3
                        height: parent.height
                        spacing: width * 00.06
                        Image {
                            width: parent.width * 0.47
                            height: parent.height * 0.9
                            source: "qrc:/graphics/text-input-bg-black"
                            Text {
                                anchors.centerIn: parent
                                font.pixelSize: parent.height * 0.30
                                color: "yellow"
                                text: qsTr("در حال بازی")
                            }
                        }

                        Image {
                            width: parent.width * 0.47
                            height: parent.height * 0.9
                            source: "qrc:/graphics/text-input-bg-black"
                            Text {
                                anchors.centerIn: parent
                                font.pixelSize: parent.height * 0.30
                                color: "yellow"
                                text: qsTr("پشتیبانی")
                            }
                        }
                    }
                }
            }
        }
    }
}

/*##^## Designer {
    D{i:0;height:350;width:800}
}
 ##^##*/
