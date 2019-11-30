import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.3

Item {
    id: element
    width: 400
    height: 400
    property alias registerBtn: registerBtn
    property alias forgotBtn: forgotBtn
    property alias loginBtn: loginBtn
    property alias username: username
    Column {
        anchors.centerIn: parent
        width: parent.width
        spacing: 20
        TextField {
            id: username
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            placeholderText: "نام کاربری"
        }
        Column {
            width: parent.width
            spacing: 10
            Button {
                id: forgotBtn
                width: parent.width
                text: "بازیابی رمز عبور"
                highlighted: true
                Material.accent: Material.Red
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 30
                layoutDirection: Qt.RightToLeft
                Button {
                    id: loginBtn
                    text: "ورود"
                    flat: true
                }
                Button {
                    id: registerBtn
                    text: "ثبت نام"
                    flat: true
                }
            }
        }
    }

    BusyIndicator {
        id: busyIndicator
        hoverEnabled: false
        enabled: false
        running: false
        visible: false
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
    states: [
        State {
            name: "Loading"

            PropertyChanges {
                target: busyIndicator
                visible: true
                enabled: true
                running: true
            }

            PropertyChanges {
                target: loginBtn
                enabled: false
            }

            PropertyChanges {
                target: forgotBtn
                enabled: false
            }

            PropertyChanges {
                target: registerBtn
                enabled: false
            }
            PropertyChanges {
                target: username
            }
        }
    ]
}
