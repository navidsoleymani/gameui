import QtQuick 2.4
import QtQuick.Window 2.12

CardDeckForm {


    /*
     * 1 = left-right
     * 2 = top-left
     */
    property int placement: 1
    cardRepeater.delegate: Image {
        source: cardImg
        fillMode: Image.PreserveAspectFit
        height: parent.height
        Component.onCompleted: {
            if (placement == 1) {
                anchors.right = parent.right
                anchors.rightMargin = index * 35
            } else {
                anchors.left = parent.left
                anchors.leftMargin = index * 35
            }
        }
        MouseArea {
            anchors.fill: parent
        }
    }
    cardRepeater.model: cardsModel
    ListModel {
        id: cardsModel
        ListElement {
            cardImg: "qrc:/cards/2D"
        }
        ListElement {
            cardImg: "qrc:/cards/3D"
        }
        ListElement {
            cardImg: "qrc:/cards/4H"
        }
        ListElement {
            cardImg: "qrc:/cards/5S"
        }
        ListElement {
            cardImg: "qrc:/cards/6D"
        }
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/

