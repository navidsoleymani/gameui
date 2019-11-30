import QtQuick 2.4

LoginForm {
    signal register
    signal resetPassword
    signal doLogin(string username, string password)
    loginBtn.onClicked: {
        state = "Loading"
        loginMocker.start()
    }
    forgotBtn.onClicked: resetPassword()
    registerBtn.onClicked: register()
    Timer {
        id: loginMocker
        running: false
        interval: 1500
        repeat: false
        onTriggered: state = "base state"
    }
}
