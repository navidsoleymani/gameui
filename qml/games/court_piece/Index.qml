import QtQuick 2.4

IndexForm {
    signal back
    signal openGamePage
    property alias timer1: timer1
    backBtn.onClicked: UIManager.backPressed()

    Timer {
        id: timer1
        running: true
        interval: 4000
        repeat: false
        onTriggered: {
            openGamePage()
        }
    }
    onOpenGamePage: courtPiecGameStackView.push(
                        "GamePage.qml")
    Connections {
        target: UIManager
        onGoBack: courtPiecGameStackView.pop()
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
