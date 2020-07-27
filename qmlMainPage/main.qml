import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import "Page"

Window {
    visible: true
    width: 700
    height: 600
    title: qsTr("Page Test")

    StackView {
        id: stack
        initialItem: mainView
        anchors.fill: parent
    }

    Page {
        id: mainView

        Text {
            id: text1
            x: 9
            y: 549
            width: 251
            height: 33
            text: qsTr("Control page")
            anchors.bottom: parent.bottom
            //anchors.bottomMargin: 5
            font.bold: false
            font.pixelSize: 18
        }

        Button{
            x: 15
            y: 14
            text: "myButton"
            onClicked: {
                myButtonPage.visible = true
                myButtonPage.stack = stack;
                stack.push(myButtonPage)
            }
        }
//        Set{
//            id:page_set
//            visible: false
//        }
        MyButtonPage{
            id:myButtonPage
            visible: false
        }
    }

}
