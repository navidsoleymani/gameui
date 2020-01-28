import QtQuick 2.4

GameTableForm {
    width: 800
    height: 350
    bar1.delegate: Image {
        z: 2
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar2.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar3.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar4.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar5.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar6.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar7.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar8.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar9.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar10.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar11.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar12.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar13.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar14.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar15.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar16.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar17.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar18.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar19.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar20.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar21.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar22.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar23.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    bar24.delegate: Image {
        source: "qrc:/graphics/checkers-1"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    bar1.model: model1
    bar2.model: model1
    bar3.model: model1
    bar4.model: model1
    bar5.model: model1
    bar6.model: model1
    bar7.model: model1
    bar8.model: model1
    bar9.model: model1
    bar10.model: model1
    bar11.model: model1
    bar12.model: model1
    bar13.model: model1
    bar14.model: model1
    bar15.model: model1
    bar16.model: model1
    bar17.model: model1
    bar18.model: model1
    bar19.model: model1
    bar20.model: model1
    bar21.model: model1
    bar22.model: model1
    bar23.model: model1
    bar24.model: model1
    ListModel {
        id: model1
        ListElement {
            text: "chekcers1"
        }
        ListElement {
            text: "chekcers2"
        }
        ListElement {
            text: "chekcers3"
        }
    }
}
