import QtQuick 2.10
import QtQuick.Controls 2.3

ApplicationWindow {
    id: mainWindow
    visible: true
    title: "Game"
    width: 870
    height: 350
    FontLoader {
        id: defaultFont
        name: "Sahel"
        source: "qrc:///Vazir"
        onStatusChanged: if (defaultFont.status == FontLoader.Ready)
                             mainWindow.font = defaultFont.name
    }
    StackView {
        id: mainStackView
        anchors.fill: parent
        initialItem: "qml/BasicAuth.qml"
    }
}
