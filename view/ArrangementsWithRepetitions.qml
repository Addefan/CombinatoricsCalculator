import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: arrangements_with_repetitions
    width: 480
    height: 270
    color: "#c2c2c2"

    Text {
        id: text_arrangements_with_repetitions
        x: 22
        y: 18
        text: qsTr("Размещения с повторениями")
        font.pixelSize: 18
        font.bold: true
    }

    Image {
        id: image_arrangements_with_repetitions
        x: 22
        y: 54
        width: 260
        height: 101
        source: "images/ArrangementsWithRepetitions.gif"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text_inputN
        x: 22
        y: 164
        text: qsTr("Введите число n:")
        font.pixelSize: 14
    }

    TextInput {
        id: textInputN
        x: 135
        y: 164
        width: 70
        height: 19
        font.pixelSize: 14
        validator: IntValidator{bottom: 0}
        clip: true
    }

    TextInput {
        id: textInputM
        x: 139
        y: 189
        width: 68
        height: 19
        font.pixelSize: 14
    }

    Text {
        id: text_inputM
        x: 22
        y: 189
        text: qsTr("Введите число m:")
        font.pixelSize: 14
    }

    Button {
        id: button_summarize
        x: 213
        y: 177
        width: 70
        height: 19
        text: qsTr("Считать")
        property var answer: 1

        onClicked: {
            answer = calculator.arrangements_with_repetitions(textInputN.text * 1, textInputM.text * 1)
            text_result.text = qsTr(answer)
        }
    }

    Text {
        id: text_result
        x: 22
        y: 214
        width: 260
        font.pixelSize: 14
        wrapMode: Text.Wrap
    }

    Button {
        id: button_back
        x: 412
        y: 236
        width: 58
        height: 26
        text: qsTr("Назад")
        icon.color: "#9b9b9b"

        onClicked: {
            ld.source=""
        }

    }

}