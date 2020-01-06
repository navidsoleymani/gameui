import QtQuick 2.4

IndexForm {
    signal back
    signal openGamePage
    property alias timer1: timer1
    width: parent.width
    height: parent.height
    backBtn.onClicked: back()
    Timer {
        id: timer1
        interval: 4000
        repeat: false
        onTriggered: openGamePage()
    }
}
