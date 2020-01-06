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


    /*CRoot.BasicAuth {
        id: basicAuth
        onLoginOk: {
            mainStackView.pop()
            mainStackView.push(index)
        }
    }*/

    /*CIndex.Index {
        id: index
        onShowProfile: mainStackView.push(userProfile)
        onPlayCoutPiece: {
            mainStackView.push(courtPiece)
        }
    }
    CourtPiece.Index {
        id: courtPiece
        onBack: mainStackView.pop()
        onOpenGamePage: mainStackView.push(courtPieceGamePage)
    }
    CourtPiece.GamePage {
        id: courtPieceGamePage
    }*/


    /*CUser.Profile {
        id: userProfile
        visible: false
        onBack: mainStackView.pop()
    }*/
    StackView {
        id: mainStackView
        anchors.fill: parent
        initialItem: CourtPiece.GamePage {
        }
    }
}
