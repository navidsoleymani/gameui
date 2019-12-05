import QtQuick 2.4

IndexDrawerForm {
    ListModel{
        id:buttonsModel
        ListElement{
            textBtn:"دکمه ۱"
        }
        ListElement{
            textBtn:"دکمه ۱"
        }
        ListElement{
            textBtn:"دکمه ۱"
        }
        ListElement{
            textBtn:"دکمه ۱"
        }
        ListElement{
            textBtn:"دکمه ۱"
        }
        ListElement{
            textBtn:"دکمه ۱"
        }
    }
    drawerButtons.model: buttonsModel
}
