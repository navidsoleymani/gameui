import QtQuick 2.4

IndexForm {
    signal back
    width: parent.width
    height: parent.height
    backBtn.onClicked: back()
    Timer{

    }
}
