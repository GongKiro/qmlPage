import QtQuick 2.8
import QtQuick.Controls 2.1

Page {

    id:buttonWindow
    title: qsTr("设置")
    visible: true

    property StackView stack: null
    height: 600

    Label{
        id:select
        x: 10
        y: 10
        height: 35
        text: qsTr("Butotn")
        font.bold: false
        font.pixelSize: 18
    }

    MyButton{
        id:button1
        x: 200
        y:10
        anchors.topMargin: 10
        anchors.leftMargin : 5
    }
    MyButton{
        id:button2
        anchors.left: button1.left
        anchors.top: button1.bottom
        anchors.topMargin: 2
        imgSrc : "qrc:/icon/Icon/apple.png"
        btnTxt : "苹果"
    }
    MyButton{
        id:button3
        anchors.left: button2.right
        anchors.top: button1.bottom
        anchors.topMargin: 2
        anchors.leftMargin: 5
        imgSrc : "qrc:/icon/Icon/Icecream.png"
        btnTxt : "冰淇淋"
    }
    MyButton{
        id:button4
        anchors.left: button3.right
        anchors.top: button1.bottom
        anchors.topMargin: 2
        anchors.leftMargin: 5
        imgSrc : "qrc:/icon/Icon/pear.png"
        btnTxt : "梨"
    }
    MyButton{
        id:button5
        anchors.left: button4.right
        anchors.top: button1.bottom
        anchors.topMargin: 2
        anchors.leftMargin: 5
        imgSrc : "qrc:/icon/Icon/cookies.png"
        btnTxt : "饼干"
    }
    MyButton{
        id:button6
        anchors.left: button5.right
        anchors.top: button1.bottom
        anchors.topMargin: 2
        anchors.leftMargin: 5
        imgSrc : "qrc:/icon/Icon/grilledchickenleg.png"
        btnTxt : "烤鸡腿"
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
