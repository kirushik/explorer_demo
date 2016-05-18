import QtQuick 2.2
import QtQuick.Controls 1.2

ApplicationWindow {
    visible: true
    title: "Привет"

    Rectangle {
        id: page
        width: 320; height: 480
        color: "lightgray"

        Text {
            id: helloText
            text: "Привет, мир!"
            y: 30
            anchors.horizontalCenter: page.horizontalCenter
            font.pointSize: 24; font.bold: true
        }
    }
}
