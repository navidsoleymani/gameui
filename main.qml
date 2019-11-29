import QtQuick 2.10
import QtQuick.Controls 2.3

ApplicationWindow {
    id: window
    visible: true
    title: "Game"

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: "Title"
            anchors.centerIn: parent
        }
    }

    StackView {
        id: stackView
        Button{
            anchors.centerIn: parent
        }

        anchors.fill: parent
    }
}
