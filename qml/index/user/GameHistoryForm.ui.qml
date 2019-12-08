import QtQuick 2.4
import QtQuick.Controls 2.12

Item {
    width: 400
    height: 400
    property alias gameHistoryList: gameHistoryList
    GridView {
        id: gameHistoryList
        //flickableDirection: Flickable.AutoFlickDirection
        anchors.fill: parent
        cellHeight: 200
        cellWidth: width / 3
        snapMode: GridView.SnapToRow
        anchors.centerIn: parent
    }
}
