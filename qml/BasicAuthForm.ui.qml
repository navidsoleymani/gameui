import QtQuick 2.4
import QtQuick.Controls 2.12
import "auth"

Item {
    id: element
    width: 400
    height: 400
    property alias resetForm: resetForm
    property alias registerForm: registerForm
    property alias loginForm: loginForm
    property alias authFormsContainer: authFormsContainer
    property alias sliderRepeater: sliderRepeater
    property alias imagesSlider: imagesSlider

    Rectangle {
        width: parent.width / 2
        height: parent.height
        color: "#00000000"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        SwipeView {
            //anchors.centerIn: parent
            id: imagesSlider
            anchors.top: parent.top
            anchors.topMargin: 15
            width: parent.width - 15
            height: parent.height - 45
            orientation: ListView.Horizontal
            spacing: 10
            property var model: ListModel {
            }
            clip: true //setting it make item outside of view invisible
            Repeater {
                id: sliderRepeater
                model: imagesSlider.model
            }
        }
        PageIndicator {
            anchors.top: imagesSlider.bottom //anchor to bottom of slider
            x: (parent.width - width) / 2 //make it horizontally center
            currentIndex: imagesSlider.currentIndex //current item?
            count: imagesSlider.count //how many items?
        }
    }
    Rectangle {
        id: loginLayout
        width: parent.width / 2
        height: parent.height
        color: "#00000000"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        SwipeView {
            id: authFormsContainer
            width: parent.width
            height: parent.height
            clip: true
            spacing: 20
            Login {
                id: loginForm
            }
            Register {
                id: registerForm
            }
            Reset {
                id: resetForm
            }
        }
    }
}








/*##^## Designer {
    D{i:0;height:400;width:800}
}
 ##^##*/
