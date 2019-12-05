import QtQuick 2.4

BasicAuthForm {
    signal doLogin
    signal doForgot
    signal loginOk
    property int curSlider: 0

    anchors.leftMargin: 5
    anchors.rightMargin: 5
    anchors.fill: parent
    ListModel {
        id: slides
        ListElement {
            imgSrc: "qrc:/img1"
        }
        ListElement {
            imgSrc: "qrc:/img2"
        }
        ListElement {
            imgSrc: "qrc:/img3"
        }
        ListElement {
            imgSrc: "qrc:/img4"
        }
    }
    sliderRepeater.delegate: Rectangle {
        width: imagesSlider.width
        height: imagesSlider.height
        color: "#ffffff"
        radius: 10
        clip: true
        Image {
            smooth: false
            anchors.fill: parent
            id: imgRptr
            source: imgSrc //we use this name in ListModel
            fillMode: Image.Stretch
        }
    }
    Component.onCompleted: {
        imagesSlider.model = slides
    }
    Connections {
        target: loginForm
        onRegister: authFormsContainer.setCurrentIndex(1)
        onResetPassword: authFormsContainer.setCurrentIndex(2)
        onLoginOk: loginOk()
    }
    Connections {
        target: registerForm
        onLogin: authFormsContainer.setCurrentIndex(0)
        onResetPassword: authFormsContainer.setCurrentIndex(2)
    }
    Connections {
        target: resetForm
        onRegister: authFormsContainer.setCurrentIndex(1)
        onLogin: authFormsContainer.setCurrentIndex(0)
    }
    Timer {
        id: sliderchanger
        interval: 3000
        running: true
        repeat: true
        onTriggered: imagesSlider.setCurrentIndex(++curSlider % 4)
    }
}
