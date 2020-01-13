import QtQuick 2.4
import QtQuick.Window 2.12

CardDeckForm {
    signal cardCliked(string name, string imagePath)

    /*
     * 1 = left-right
     * 2 = top-left
     */
    property int placement: 1
    property double centerX: 0
    property double centery: 0
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
            onClicked: if (placement == 1) {
                           parent.visible = false
                           cardCliked(card, cardImg)
                       }
        }
    }
}
