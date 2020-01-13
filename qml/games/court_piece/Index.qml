import QtQuick 2.4

IndexForm {
    signal back
    signal openGamePage
    property alias timer1: timer1
    width: parent.width
    height: parent.height
    backBtn.onClicked: UIManager.backPressed()

    Timer {
        id: timer1
        running: true
        interval: 4000
        repeat: false
        onTriggered: openGamePage()
    }
}
