
import QtQuick
import QtQuick.Layouts

RowLayout {
    spacing: 6

    Repeater {
        model: 4 // Cria 4 bolinhas para testar

        Rectangle {
            implicitWidth: 16
            implicitHeight: 16
            radius: 8
            color: index === 0 ? "#ff007f" : "#444444"

            Text {
                anchors.centerIn: parent
                text: index + 1
                color: "white"
                font.pixelSize: 10
            }
        }
    }
}

