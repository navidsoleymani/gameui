import QtQuick 2.4
import QtQuick.Controls 2.12

Item {
    width: 400
    height: 400
    property alias dropBtn: dropBtn
    property alias takeBtn: takeBtn
    property alias backBtn: backBtn
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
        Image {
            clip: true
            width: 75
            height: 75
            anchors.top: oponentDeck.bottom
            anchors.topMargin: 15
            anchors.left: parent.left
            anchors.leftMargin: 15
            source: "qrc:/drawer-img/7"
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
                    radiusX: gameDeck.width * 0.25
                    radiusY: gameDeck.width * 0.25
                    useLargeArc: true
                }
            }
        }
        Button {
            id: dropBtn
            text: "انداختن"
            anchors.right: parent.right
            anchors.rightMargin: 15
            anchors.bottom: takeBtn.top
            anchors.bottomMargin: 15
        }
        Button {
            id: takeBtn
            text: "برداشتن"
            anchors.right: parent.right
            anchors.rightMargin: 15
            anchors.bottom: userDeck.top
            anchors.bottomMargin: 15
        }
        Image {
            id: image
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            anchors.left: parent.left
            anchors.leftMargin: 15
            source: "qrc:/graphics/left-arrow"
            MouseArea {
                id: backBtn
                anchors.fill: parent
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:400;width:800}
}
##^##*/

