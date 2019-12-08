import QtQuick 2.4
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12
import "helpers" as Helpers

IndexForm {
    signal showProfile
    width: parent.width
    height: parent.height
    pokerMA.onPressed: console.log("pressed")
    pokerMA.onReleased: console.log("released")
    sidebarOpener.onClicked: {
        drawerItem.open()
    }
    // work around for drag margin issue
    sidebarOpener.z: drawerItem.opened ? 2 : 4
    Drawer {
        id: drawerItem
        edge: Qt.RightEdge
        height: parent.height
        width: parent.width * 0.35
        z: 3
        dragMargin: 30
        Helpers.IndexDrawer {
            id: indexDrawerItem
            anchors.fill: parent
            onItemClicked: if (itemId === 1)
                               showProfile()
        }
    }
}
