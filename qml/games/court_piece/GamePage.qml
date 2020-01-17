import QtQuick 2.4

GamePageForm {
    property variant selectedCards: []
    width: parent.width
    height: parent.height
    userDeck.cardRepeater.model: userCardsModel
    oponentDeck.cardRepeater.model: oponentCardsModel
    userDeck.onCardCliked: {
        gameDeckModel.append({"cardImgPath":imagePath})
    }
    gameDeck.model: gameDeckModel

    ListModel {
        id: userCardsModel
        ListElement {
            cardImg: "qrc:/cards/2D"
            card: "2D"
        }
        ListElement {
            cardImg: "qrc:/cards/3D"
            card: "3D"
        }
        ListElement {
            cardImg: "qrc:/cards/4H"
            card: "4H"
        }
        ListElement {
            cardImg: "qrc:/cards/5S"
            card: "5S"
        }
        ListElement {
            cardImg: "qrc:/cards/6D"
            card: "6D"
        }
    }
    ListModel {
        id: oponentCardsModel
        ListElement {
            cardImg: "qrc:/cards/red_back"
        }
        ListElement {
            cardImg: "qrc:/cards/red_back"
        }
        ListElement {
            cardImg: "qrc:/cards/red_back"
        }
        ListElement {
            cardImg: "qrc:/cards/red_back"
        }
        ListElement {
            cardImg: "qrc:/cards/red_back"
        }
    }
    ListModel{
        id:gameDeckModel
    }
    backBtn.onClicked: UIManager.backPressed()
}
