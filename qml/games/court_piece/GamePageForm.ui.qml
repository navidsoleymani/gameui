import QtQuick 2.4
import QtQuick.Controls 2.12

Item {
    width: 400
    height: 400
    Page {
        id: page
        anchors.fill: parent
        background: Image {
            source: "qrc:/graphics/index-bg"
        }

        CardDeck {
            id: userDeck
            placement: 1
            width: parent.width * 0.25
            height: parent.height * 0.25
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            anchors.right: parent.right
            anchors.rightMargin: 15
        }
        CardDeck {
            id: oponentDeck
            placement: 2
            width: parent.width * 0.25
            height: parent.height * 0.25
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.left: parent.left
            anchors.leftMargin: 15
        }
    }
}




/*##^## Designer {
    D{i:0;height:400;width:800}
}
 ##^##*/
