import QtQuick 2.8
import QtQuick.Controls 2.1

Page {

    id:buttonWindow
    title: qsTr("设置")
    visible: true

    property StackView stack: null
    height: 600

    MyButton{
        id:button1
        x: 200
        y:10
        anchors.topMargin: 10
        anchors.leftMargin : 5
        onClickedLeft: {
            console.log("MyButton onClickedLeft")
        }
    }

    Label {
        id: text1
        width: parent.width - 80
        height: 35
        text: qsTr("Butotn page")
        anchors.bottom: parent.bottom
        //anchors.bottomMargin: 5
        font.bold: false
        font.pixelSize: 18
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        background: Rectangle{
            color: "#E0E0E0"
        }

    }

    Button {
        x: 562

        height: 35
        width: 80
        text: "<-"
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        //anchors.bottomMargin: 5
        anchors.right: parent.right
        onClicked: stack.pop()

    }


}
