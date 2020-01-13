import QtQuick 2.4
import QtQuick.Controls 2.12

Item {
    width: 400
    height: 400
    property alias gameDeck: gameDeck
    property alias oponentDeck: oponentDeck
    property alias userDeck: userDeck
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

        PathView {
            id: gameDeck
            width: parent.width * 0.25
            height: parent.height * 0.25
            interactive: false
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            delegate: Column {
                Image {
                    width: 50
                    height: 100
                    fillMode: Image.PreserveAspectFit
                    source: cardImgPath
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
            path: Path {
                startX: 0
                startY: 0

                PathArc {
                    x: 0
                    y: 100
                    radiusX: gameDeck.width * 0.50
                    radiusY: gameDeck.width * 0.50
                    useLargeArc: true
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:400;width:800}D{i:5;anchors_height:130;anchors_width:250}
}
##^##*/

