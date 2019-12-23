import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12

Item {
    width: 400
    height: 400
    property alias pokerImg: pokerImg
    property alias backgammmonImg: backgammmonImg
    property alias sidebarOpener: sidebarOpener
    property alias pokerMA: pokerMA
    property alias backgammmonMA: backgammmonMA
    Page {
        background: Image {
            source: "qrc:/graphics/auth-bg"
        }

        id: page
        anchors.fill: parent
        RoundButton {
            id: sidebarOpener
            display: AbstractButton.TextOnly
            highlighted: true
            flat: false
            z: 2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 30
            font.family: "IcoMoon"
            text: "\ue900"
        }

        Row {
            id: row
            anchors.fill: parent
            layoutDirection: Qt.RightToLeft
            Rectangle {
                width: parent.width * 0.5
                height: parent.height
                color: "transparent"
                Image {
                    id: pokerImg
                    width: pokerMA.pressed ? parent.width * 0.48 : parent.width * 0.50
                    height: pokerMA.pressed ? parent.height * 0.48 : parent.height * 0.50
                    anchors.centerIn: parent
                    source: "qrc:/poker-bg"
                }
                DropShadow {
                    anchors.fill: pokerImg
                    horizontalOffset: 0
                    verticalOffset: 0
                    radius: pokerMA.pressed ? 8.0 : 10.0
                    spread: pokerMA.pressed ? 0.1 : 0.4
                    samples: 17
                    color: "#80000000"
                    source: pokerImg
                }
                MouseArea {
                    id: pokerMA
                    anchors.fill: parent
                }
            }
            ToolSeparator {
                height: parent.height * 0.8
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle {
                width: parent.width * 0.5
                height: parent.height
                color: "transparent"
                Image {
                    id: backgammmonImg
                    width: backgammmonMA.pressed ? parent.width * 0.48 : parent.width * 0.50
                    height: backgammmonMA.pressed ? parent.height * 0.48 : parent.height * 0.50
                    anchors.centerIn: parent
                    source: "qrc:/backgammon-bg"
                }
                DropShadow {
                    anchors.fill: backgammmonImg
                    horizontalOffset: 0
                    verticalOffset: 0
                    radius: backgammmonMA.pressed ? 8.0 : 10.0
                    spread: backgammmonMA.pressed ? 0.1 : 0.4
                    samples: 17
                    color: "#80000000"
                    source: backgammmonImg
                }
                MouseArea {
                    id: backgammmonMA
                    anchors.fill: parent
                }
            }
        }
    }
}

/*##^## Designer {
    D{i:0;height:350;width:800}
}
 ##^##*/
