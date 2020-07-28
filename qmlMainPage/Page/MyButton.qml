import QtQuick 2.8
import QtQuick.Controls 2.5


Rectangle {
    id:myButton

    width: 60
    height: 65

    property alias imgSrc: icon.source
    property alias btnTxt: btnText.text

    //color : "#FFFFFF"
    //设置边框的大小和颜色，倒角
    border.width: btnArea.containsMouse ? 1 : 0
    border.color: "#1296db"
    color: "transparent" //透明
    //设置渐变色，与color冲突？？
    //gradient: Gradient.NightFade
    radius: 5
    signal clickedLeft()
    signal clickedRight()
    //color: btnArea.pressed ? Qt.darker(btnColor, 1.2) : (btnArea.containsMouse ? Qt.lighter(btnColor, 1.2) : btnColor)

    Image {
        id: icon
        width: 40
        height: 40
        source: "qrc:/icon/Icon/exit.png"
        fillMode: Image.PreserveAspectFit
        clip: true
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        //anchors.right: parent.right
        //anchors.left: parent.left
        //anchors.margins: 10
    }
    Text {
        id: btnText
        //anchors.centerIn: parent
        anchors.horizontalCenter:parent.horizontalCenter
        //anchors.verticalCenter: parent.verticalCenter
        anchors.top: icon.bottom
        anchors.topMargin: 5
        text: qsTr("HELL")
    }
    MouseArea {
        id: btnArea
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            console.log(qsTr(btnText.text))
            //这个地方的条件是 鼠标按下并且光标还停留在Rectangle区域？
            if(mouse.button === Qt.LeftButton){
                //console.log(qsTr("Left按钮被按了"))
                myButton.clickedLeft()
            }
            else if(mouse.button === Qt.RightButton){
                //console.log(qsTr("right按钮被按了"))
                myButton.clickedRight()
            }
        }
        onPressed: {
            color = "#606060"
            //console.log(qsTr("onPressed"))
        }
        onReleased: {
            color = "#B0B0B0"
            //console.log(qsTr("onReleased"))
        }
        onEntered: {
            color = "#B0B0B0"
            //console.log(qsTr("onEntered"))
            //icon.source = qsTr("qrc:/icon/Icon/enter.png")
            btnText.color = "#1296db"
        }
        onExited: {
            color = "#FFFFFF"
            //console.log(qsTr("onExited"))
            //icon.source = qsTr("qrc:/icon/Icon/exit.png")
            btnText.color = "#2c2c2c"
        }
    }
}
