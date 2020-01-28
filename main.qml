import QtQuick 2.10
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
import "qml" as CRoot
import "qml/index" as CIndex
import "qml/index/user" as CUser
import "qml/games/backgammon" as BackgammonUI
import "qml/games/court_piece" as CourtPiece

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
        id: basicAuth
        onLoginOk: {
            mainStackView.pop()
            mainStackView.push(index)
            visible = false
        }
    }

    CIndex.Index {
        id: index
        //onShowProfile: mainStackView.push(userProfile)
        onPlayCourtPiece: {
            mainStackView.push("qml/games/court_piece/Index.qml", {
                                   "height": mainStackView.height,
                                   "width": mainStackView.width
                               })
        }
        onPlayBackgammon: {
            mainStackView.push("qml/games/backgammon/Index.qml", {
                                   "height": mainStackView.height,
                                   "width": mainStackView.width
                               })
        }
        height: mainStackView.height
        width: mainStackView.width
    }
    BackgammonUI.Index {
        id: backgammonUI
        height: mainStackView.height
        width: mainStackView.width
    }

    Connections {
        target: UIManager
        onGoBack: mainStackView.pop()
    }

    StackView {
        id: mainStackView
        anchors.fill: parent
        initialItem: basicAuth
    }
}
