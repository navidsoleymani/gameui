import QtQuick 2.10
import QtQuick.Controls 2.3
import "qml" as CRoot
import "qml/index" as CIndex

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
    FontLoader {
        id: icoMoon
        name: "IcoMoon"
        source: "qrc:///IcoMoon"
    }

    CRoot.BasicAuth {
        id: bsciAuth
        onLoginOk: {
            mainStackView.pop()
            mainStackView.push(index)
        }
    }
    CIndex.Index {
        id: index
    }
    StackView {
        id: mainStackView
        background: Rectangle {
            color: "white"
        }

        anchors.fill: parent
        initialItem: index
    }
}
