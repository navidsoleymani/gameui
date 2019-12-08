import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Item {
    width: 400
    height: 400
    property alias row1: row1
    property alias row2: row2
    property alias row3: row3
    property alias row4: row4
    property alias column1: column1
    property alias saveBtn: saveBtn
    Row {
        id: row
        spacing: 3
        anchors.rightMargin: 5
        anchors.leftMargin: 5
        layoutDirection: Qt.RightToLeft
        anchors.fill: parent
        Image {
            id: image
            x: 664
            y: 36
            width: 100
            height: 100
            source: "qrc:/drawer-img/1"
            fillMode: Image.PreserveAspectFit
        }
        ToolSeparator {
            height: flickable.contentHeight
        }

        Flickable {
            id: flickable
            height: parent.height
            width: parent.width - image.width - row.spacing - 5
            contentWidth: width
            contentHeight: 350 // column1.height
            Column {
                id: column1
                anchors.fill: parent
                anchors.topMargin: 36
                spacing: 10
                Row {
                    id: row1
                    layoutDirection: Qt.RightToLeft
                    spacing: 10
                    width: parent.width
                    TextField {
                        width: (parent.width / 2) - (parent.spacing * 2)
                        id: textField1
                        text: qsTr("username")
                        enabled: false
                    }
                    TextField {
                        width: (parent.width / 2) - (parent.spacing * 2)
                        id: textField2
                        text: qsTr("email@site.dom")
                        enabled: false
                    }
                }
                Row {
                    id: row2
                    layoutDirection: Qt.RightToLeft
                    spacing: 10
                    width: parent.width
                    TextField {
                        width: (parent.width / 2) - (parent.spacing * 2)
                        id: textField3
                        text: qsTr("کد معرف")
                        enabled: false
                    }
                    TextField {
                        width: (parent.width / 2) - (parent.spacing * 2)
                        id: textField4
                        text: qsTr("نام کاربری معرف")
                        enabled: false
                    }
                }
                Row {
                    id: row3
                    layoutDirection: Qt.RightToLeft
                    spacing: 10
                    width: parent.width
                    TextField {
                        width: (parent.width / 2) - (parent.spacing * 2)
                        id: textField5
                        text: qsTr("اسم کاربر")
                        horizontalAlignment: Text.AlignRight
                        placeholderText: "اسم کاربر"
                    }
                    TextField {
                        width: (parent.width / 2) - (parent.spacing * 2)
                        id: textField6
                        text: qsTr("نام خانوادگی")
                        horizontalAlignment: Text.AlignRight
                        placeholderText: "نام خانوادگی"
                    }
                }
                Row {
                    id: row4
                    layoutDirection: Qt.RightToLeft
                    spacing: 10
                    width: parent.width
                    TextField {
                        width: (parent.width / 2) - (parent.spacing * 2)
                        id: textField7
                        placeholderText: "رمز عبور"
                        echoMode: TextInput.Password
                    }
                    TextField {
                        width: (parent.width / 2) - (parent.spacing * 2)
                        id: textField8
                        placeholderText: "تکرار رمز عبور"
                        echoMode: TextInput.Password
                    }
                }
                Row {
                    id: row5
                    layoutDirection: Qt.RightToLeft
                    spacing: 10
                    width: parent.width
                    Button {
                        id: saveBtn
                        text: "ذخیره"
                        highlighted: true
                        Material.accent: Material.Green
                    }
                }
            }
        }
    }
}






/*##^## Designer {
    D{i:0;height:300;width:800}
}
 ##^##*/
