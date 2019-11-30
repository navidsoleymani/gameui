import QtQuick 2.4
import QtQuick.Controls 2.12

ResetForm {
    signal register
    signal resetPassword
    signal login
    signal resetOk
    forgotBtn.onClicked: {
        state = "Loading"
        ResetManager.do_reset(username.text)
    }
    Connections {
        target: ResetManager
        onReset_result: {
            state = "base state"
            if (status) {
                resetOk()
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
