import QtQuick 2.4
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12
import "helpers" as Helpers

IndexForm {
    signal showProfile
    signal playCoutPiece
    signal playBackgammon
    width: parent.width
    height: parent.height
    pokerMA.onClicked: playCoutPiece()
    backgammmonMA.onClicked: playBackgammon()
}
