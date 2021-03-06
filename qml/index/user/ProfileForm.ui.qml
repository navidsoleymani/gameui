import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
    width: 400
    height: 400
    property alias mainStackView: mainStackView
    property alias mainContainer: mainContainer
    property alias backBtn: backBtn
    Page {
        id: mainContainer
        LayoutMirroring.enabled: true
        anchors.fill: parent
        footer: TabBar {
            id: tabBar
            width: parent.width
            currentIndex: 1
            TabButton {
                text: "لیست بازی ها"
            }
            TabButton {
                text: "اطلاعات حساب"
            }
        }
        header: ToolBar {
            ToolButton {
                id: backBtn
                text: "\uea42"
                anchors.right: parent.right
                anchors.rightMargin: 10
                font.family: "IcoMoon"
                font.pointSize: 20
            }
        }

        SwipeView {
            id: mainStackView
            clip: true
            width: parent.width
            height: parent.height
            currentIndex: tabBar.currentIndex
            LayoutMirroring.enabled: true
            Item {
                GameHistory {
                    width: parent.width
                    height: parent.height
                }
            }

            Item {
                UserInfo {
                    width: parent.width
                    height: parent.height
                }
            }
        }
    }
}






/*##^## Designer {
    D{i:0;height:300;width:800}
}
 ##^##*/
