import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3

Item {
    width: 400
    height: 400
    property alias sidebarOpener: sidebarOpener
    property alias pokerMA: pokerMA
    property alias backgammmonMA: backgammmonMA
    Page {
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
                MouseArea {
                    id: pokerMA
                    anchors.fill: parent
                }
            }
            Rectangle {
                width: parent.width * 0.5
                height: parent.height
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
