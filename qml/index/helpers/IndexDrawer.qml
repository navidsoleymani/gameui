import QtQuick 2.4
import QtQuick.Controls 2.12

IndexDrawerForm {
    signal itemClicked(int itemId)
    ListModel {
        id: buttonsModel
        ListElement {
            elemText: "پروفایل کاربری"
            elemId: 1
        }
        ListElement {
            elemText: "دکمه ۱"
            elemId: 2
        }
        ListElement {
            elemText: "دکمه ۲"
            elemId: 3
        }
        ListElement {
            elemText: "دکمه ۳"
            elemId: 4
        }
        ListElement {
            elemText: "دکمه ۴"
            elemId: 5
        }
    }
    drawerButtons.model: buttonsModel
    drawerButtons.delegate: ItemDelegate {
        id: itemDelegate
        width: parent.width
        text: elemText
        rightPadding: 10
        display: AbstractButton.TextOnly
        LayoutMirroring.enabled: true
        onClicked: itemClicked(elemId)
    }
}
