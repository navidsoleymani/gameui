import QtQuick 2.4
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12

IndexForm {
    signal showProfile
    signal playCourtPiece
    signal playBackgammon
    pokerMA.onClicked: playCourtPiece()
    backgammmonMA.onClicked: playBackgammon()
}
