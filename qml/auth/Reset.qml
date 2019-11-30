import QtQuick 2.4

ResetForm {
    signal register
    signal resetPassword
    signal login
    forgotBtn.onClicked: {
        state = "Loading"
        loginMocker.start()
    }
    loginBtn.onClicked: login()
    registerBtn.onClicked: register()
    Timer {
        id: loginMocker
        running: false
        interval: 1500
        repeat: false
        onTriggered: state = "base state"
    }
}
