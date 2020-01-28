import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12
import QtQuick.Controls.Material 2.3

Item {
    width: 400
    height: 400
    property alias userAvatar: userAvatar
    property alias playerName: playerName
    property alias playerLevel: playerLevel
    property alias pokerMA: pokerMA
    property alias backgammmonMA: backgammmonMA
    Page {
        background: Image {
            source: "qrc:/graphics/index-bg"
            fillMode: Image.PreserveAspectCrop
        }
        id: page
        anchors.fill: parent
        Row {
            id: row1
            width: parent.width * 0.9
            height: parent.height * 0.15
            layoutDirection: Qt.RightToLeft
            spacing: 15
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter
            Image {
                id: userAvatar
                height: parent.height
                source: "qrc:/drawer-img/2"
                fillMode: Image.PreserveAspectFit
            }
            Column {
                anchors.verticalCenter: parent.verticalCenter
                Text {
                    id: playerName
                    color: "#FFC107"
                    text: "نام بازیکن"
                    font.pixelSize: 13
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                }
                Text {
                    id: playerLevel
                    color: "white"
                    text: "سطح 17"
                    font.pixelSize: 13
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                }
            }
        }
        Row {
            id: row2
            width: parent.width * 0.90
            anchors.bottom: row3.top
            anchors.bottomMargin: 0
            anchors.top: row1.bottom
            anchors.topMargin: 0
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
            id: row3
            width: parent.width
            height: parent.height * 0.15
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            Row {
                width: parent.width * 0.9
                height: parent.height
                anchors.horizontalCenter: parent.horizontalCenter
                Row {
                    width: parent.width / 3
                    height: parent.height
                    spacing: width * 00.06
                    Button {
                        width: parent.width * 0.47
                        height: parent.height * 0.9
                        //source: "qrc:/graphics/text-input-bg-black"
                        Material.accent: Material.BlueGrey
                        highlighted: true
                        text: qsTr("تنظیمات")
                    }
                    Button {
                        width: parent.width * 0.47
                        height: parent.height * 0.9
                        //source: "qrc:/graphics/text-input-bg-black"
                        Material.accent: Material.BlueGrey
                        highlighted: true
                        text: qsTr("تراکنش ها")
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
                            height: 30
                            width: 50
                            fillMode: Image.PreserveAspectFit
                            source: "qrc:/graphics/telegram"
                        }
                        Image {
                            height: 30
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
                    Button {
                        width: parent.width * 0.47
                        height: parent.height * 0.9
                        //source: "qrc:/graphics/text-input-bg-black"
                        highlighted: true
                        Material.accent: Material.BlueGrey
                        text: qsTr("فروشگاه")
                    }

                    Button {
                        width: parent.width * 0.47
                        height: parent.height * 0.9
                        //source: "qrc:/graphics/text-input-bg-black"
                        Material.accent: Material.BlueGrey
                        text: qsTr("پشتیبانی")
                        highlighted: true
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
