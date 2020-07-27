import QtQuick 2.8
import QtQuick.Controls 2.5


Rectangle {
    id:myButton

    width: 140
    height: 40

    color : "#E0E0E0"
    //设置边框的大小和颜色，倒角
    border.width: btnArea.containsMouse ? 1 : 0
    border.color: "red"
    //color: "transparent" 透明
    //设置渐变色，与color冲突？？
    //gradient: Gradient.NightFade
    radius: 5
    signal clickedLeft()
    signal clickedRight()
    //color: btnArea.pressed ? Qt.darker(btnColor, 1.2) : (btnArea.containsMouse ? Qt.lighter(btnColor, 1.2) : btnColor)
    Text {
        id: btnText
        anchors.centerIn: parent
        text: qsTr("我是一个按钮")
    }
    MouseArea {
        id: btnArea
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            //这个地方的条件是 鼠标按下并且光标还停留在Rectangle区域？
            if(mouse.button === Qt.LeftButton){
                console.log(qsTr("Left按钮被按了"))
                myButton.clickedLeft()
            }
            else if(mouse.button === Qt.RightButton){
                console.log(qsTr("right按钮被按了"))
                myButton.clickedRight()
            }
        }
        onPressed: {
            color = "#606060"
            console.log(qsTr("onPressed"))
        }
        onReleased: {
            color = "#B0B0B0"
            console.log(qsTr("onReleased"))
        }
        onEntered: {
            color = "#B0B0B0"
            console.log(qsTr("onEntered"))
        }
        onExited: {
            color = "#E0E0E0"
            console.log(qsTr("onExited"))
        }
    }
}
