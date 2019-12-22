import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.3

Item {
    id: element
    width: 400
    height: 400
    property alias referenceCode: referenceCode
    property alias registerBtn: registerBtn
    property alias forgotBtn: forgotBtn
    property alias loginBtn: loginBtn
    property alias password: password
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
            placeholderTextColor: "#a0ffffff"
            color: "white"
            background: Image {
                source: "qrc:/graphics/text-input-bg-black"
            }
        }
        TextField {
            id: password
            width: parent.width
            echoMode: TextInput.Password
            horizontalAlignment: Text.AlignHCenter
            placeholderText: "رمز عبور"
            placeholderTextColor: "#a0ffffff"
            color: "white"
            background: Image {
                source: "qrc:/graphics/text-input-bg-black"
            }
        }
        TextField {
            id: referenceCode
            width: parent.width
            echoMode: TextInput.Password
            horizontalAlignment: Text.AlignHCenter
            placeholderText: "کد معرف"
            placeholderTextColor: "#a0ffffff"
            color: "white"
            background: Image {
                source: "qrc:/graphics/text-input-bg-black"
            }
        }
        Column {
            width: parent.width
            spacing: 10
            Button {
                id: registerBtn
                width: parent.width
                text: "ثبت نام"
                highlighted: true
                Material.accent: Material.Green
                background: Image {
                    source: "qrc:/graphics/text-input-bg"
                }
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 30
                layoutDirection: Qt.RightToLeft
                Button {
                    id: forgotBtn
                    text: "فراموشی رمز عبور"
                    flat: true
                    background: Image {
                        source: "qrc:/graphics/default-btn-bg"
                    }
                }
                Button {
                    id: loginBtn
                    text: "ورود"
                    flat: true
                    background: Image {
                        source: "qrc:/graphics/default-btn-bg"
                    }
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
                readOnly: true
            }
            PropertyChanges {
                target: password
                readOnly: true
            }
            PropertyChanges {
                target: referenceCode
                readOnly: true
            }
        }
    ]
}
