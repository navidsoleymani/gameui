import QtQuick 2.4

RegisterForm {
    signal register
    signal resetPassword
    signal login
    registerBtn.onClicked: {
        state = "Loading"
        loginMocker.start()
    }
    forgotBtn.onClicked: resetPassword()
    loginBtn.onClicked: login()
    Timer {
        id: loginMocker
        running: false
        interval: 1500
        repeat: false
        onTriggered: state = "base state"
    }
}
