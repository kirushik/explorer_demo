import QtQuick 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.2

ApplicationWindow {
    visible: true
    title: "Привет"
    id: application
    minimumWidth: 400

    ColumnLayout {
        spacing: 20
        anchors.fill: parent

        Text {
            id: helloText
            text: "Значение: " + counter.value()
            font.pointSize: 24; font.bold: true
        }

        Button {
            text: "Увеличить"
            onClicked: do_magic()
        }
    }

    function do_magic() {
        counter.increment();
        helloText.text = "Значение: " + counter.value()
    }
}
