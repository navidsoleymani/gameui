import QtQuick 2.4

ProfileForm {
    signal back
    height: parent.height
    width: parent.width
    backBtn.onClicked: back()
    //Component.onCompleted: mainStackView.currentIndex = 1
}
