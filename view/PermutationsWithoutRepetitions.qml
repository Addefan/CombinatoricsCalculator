import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: permutations_with_repetitions
    width: 480
    height: 270
    color: "#c2c2c2"

    Text {
        id: permutations_without_repetitions
        x: 22
        y: 18
        text: qsTr("Перестановки без повторений")
        font.pixelSize: 18
        font.bold: true
    }

    Image {
        id: image_permutations_without_repetitions
        x: 22
        y: 59
        width: 161
        height: 101
        source: "images/PermutationsWithoutRepetitions.gif"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text_inputN
        x: 22
        y: 169
        text: qsTr("Введите число n:")
        font.pixelSize: 14
    }

    TextInput {
        id: textInputN
        x: 135
        y: 169
        width: 70
        height: 19
        font.pixelSize: 14
        validator: IntValidator{bottom: 0}
        clip: true
    }

    Button {
        id: button_summarize
        x: 209
        y: 169
        width: 70
        height: 19
        text: qsTr("Считать")
        property var answer: 1

        onClicked: {
            answer = textInputN.text * 1
            answer = calculator.permutations_without_repetitions(answer)
            text_result.text = qsTr(answer)
        }
    }

    Text {
        id: text_result
        x: 22
        y: 194
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

        onClicked: {
            ld.source=""
        }

    }

}