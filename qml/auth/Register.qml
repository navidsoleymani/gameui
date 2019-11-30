import QtQuick 2.4
import QtQuick.Controls 2.12

RegisterForm {
    signal register
    signal resetPassword
    signal login
    signal registerOk
    registerBtn.onClicked: {
        state = "Loading"
        RegisterManager.do_register(username.text, password.text,
                                    referenceCode.text)
    }
    Connections {
        target: RegisterManager
        onRegister_result: {
            state = "base state"
            if (status) {
                registerOk()
            }
            loginResult.message = message
            loginResult.open()
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
    loginBtn.onClicked: login()
    Timer {
        id: loginMocker
        running: false
        interval: 1500
        repeat: false
        onTriggered: state = "base state"
    }
}
