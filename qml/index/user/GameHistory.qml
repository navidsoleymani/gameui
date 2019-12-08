import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.3
import QtGraphicalEffects 1.12

GameHistoryForm {
    ListModel {
        id: gamesModel
    }
    gameHistoryList.model: gamesModel
    gameHistoryList.delegate: Rectangle {
        width: gameHistoryList.cellWidth
        height: gameHistoryList.cellHeight
        Image {
            id: img2
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 0
            anchors.top: parent.top
            source: image
            width: parent.width - (parent.border.width * 2)
            height: parent.height * 0.7 - 10
            fillMode: Image.PreserveAspectCrop
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: img2.bottom
            anchors.topMargin: 5
            text: elemText
            color: result ? "back" : "white"
        }
        radius: 7
        clip: true
        color: result ? Material.color(Material.LightGreen,
                                       Material.Shade500) : Material.color(
                            Material.Red)
        border.color: "white"
        border.width: 2
    }
    Component.onCompleted: {
        for (var i = 0; i < 25; i++) {
            var img = i % 2 == 0 ? "qrc:/history-header/backgammon" : "qrc:/history-header/poker"
            gamesModel.append({
                                  "elemText": "سابقه بازی ",
                                  "result": i % 4 == 0,
                                  "image": img
                              })
        }
    }
}
