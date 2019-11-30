import QtQuick 2.4
import QtQuick.Controls 2.12

LoginForm {
    signal register
    signal resetPassword
    signal doLogin(string username, string password)
    signal loginOk()
    loginBtn.onClicked: {
        state = "Loading"
        LoginManager.do_login(username.text, password.text)
    }
    Connections {
        target: LoginManager
        onLogin_result: {
            state = "base state"
            if(status){
                loginOk()
            }
            else{
                loginResult.message = message
                loginResult.open()
            }
        }
    }
    Dialog {
        id: loginResult
        property string message: ""
        anchors.centerIn: parent
        Text {
            text: loginResult.message
        }
        footer: DialogButtonBox {
            buttonLayout: DialogButtonBox.AndroidLayout
            alignment: Qt.AlignLeft
            Button {
                flat: true
                text: qsTr("بازگشت")
                DialogButtonBox.buttonRole: DialogButtonBox.RejectRole
            }
        }
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
