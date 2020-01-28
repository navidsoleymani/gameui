import QtQuick 2.4
import QtQuick.Controls 2.12

Item {
    id: element
    width: 400
    height: 400
    property alias bar24: bar24
    property alias bar23: bar23
    property alias bar22: bar22
    property alias bar21: bar21
    property alias bar20: bar20
    property alias bar19: bar19
    property alias bar18: bar18
    property alias bar17: bar17
    property alias bar16: bar16
    property alias bar15: bar15
    property alias bar14: bar14
    property alias bar13: bar13
    property alias bar12: bar12
    property alias bar11: bar11
    property alias bar10: bar10
    property alias bar9: bar9
    property alias bar8: bar8
    property alias bar7: bar7
    property alias bar6: bar6
    property alias bar5: bar5
    property alias bar4: bar4
    property alias bar3: bar3
    property alias bar2: bar2
    property alias bar1: bar1

    Image {
        id: bg
        anchors.fill: parent
        z: -1
        source: "qrc:/graphics/bckgammon-bg-2"
    }

    Row {
        // items stick to top
        id: row11
        width: parent.width * 0.44
        height: parent.height * 0.5
        anchors.top: parent.top
        anchors.topMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 18
        ListView {
            id: bar24
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
        ListView {
            id: bar23
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
        ListView {
            id: bar22
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
        ListView {
            id: bar21
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
        ListView {
            id: bar20
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
        ListView {
            id: bar19
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
    }
    Row {
        // items stick to top
        id: row12
        width: parent.width * 0.44
        height: parent.height * 0.5
        anchors.right: parent.right
        anchors.rightMargin: 15
        anchors.top: parent.top
        anchors.topMargin: 15
        ListView {
            id: bar18
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
        ListView {
            id: bar17
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
        ListView {
            id: bar16
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
        ListView {
            id: bar15
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
        ListView {
            id: bar14
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
        ListView {
            id: bar13
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
        }
    }
    Row {
        // items stick to bottom
        id: row21
        width: parent.width * 0.44
        height: parent.height * 0.5
        anchors.left: parent.left
        anchors.leftMargin: 18
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 25
        ListView {
            id: bar12
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }
        ListView {
            id: bar11
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }

        ListView {
            id: bar10
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }
        ListView {
            id: bar9
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }
        ListView {
            id: bar8
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }
        ListView {
            id: bar7
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }
    }
    Row {
        // items stick to bottom
        id: row22
        width: parent.width * 0.44
        height: parent.height * 0.5
        anchors.right: parent.right
        anchors.rightMargin: 15
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 25
        ListView {
            id: bar6
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }
        ListView {
            id: bar5
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }
        ListView {
            id: bar4
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }
        ListView {
            id: bar3
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }
        ListView {
            id: bar2
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }
        ListView {
            id: bar1
            anchors.top: parent.top
            width: parent.width / 6
            height: parent.height
            rotation: 180
        }
    }
}
