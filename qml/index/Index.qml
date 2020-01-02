import QtQuick 2.4
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12
import "helpers" as Helpers

IndexForm {
    signal showProfile
    width: parent.width
    height: parent.height
    pokerMA.onPressed: console.log("pressed")
    pokerMA.onReleased: console.log("released")

    backgammmonMA.onPressed: console.log("pressed")
    backgammmonMA.onReleased: console.log("released")
}
