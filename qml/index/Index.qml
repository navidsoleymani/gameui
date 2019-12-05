import QtQuick 2.4
import QtQuick.Controls 2.12
import "helpers" as Helpers

IndexForm {
    anchors.fill: parent
    pokerMA.onPressed: console.log("pressed")
    pokerMA.onReleased: console.log("released")
    sidebarOpener.onClicked: {

        drawerIndex.open()
    }
    // work around for drag margin issue
    sidebarOpener.z: drawerIndex.opened ? 2 : 4
    Drawer {
        id: drawerIndex
        edge: Qt.RightEdge
        height: parent.height
        width: parent.width * 0.35
        z: 3
        dragMargin: 50
        Helpers.IndexDrawer {
            anchors.fill: parent
        }
    }
}
