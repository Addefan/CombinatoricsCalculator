import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: permutations_with_repetitions
    width: 480
    height: 270
    color: "#c2c2c2"

    Text {
        id: text_permutations_with_repetitions
        x: 22
        y: 18
        text: qsTr("Перестановки с повторениями")
        font.pixelSize: 18
        font.bold: true
    }

    Image {
        id: image_permutations_with_repetitions
        x: 22
        y: 70
        width: 288
        height: 49
        source: "images/PermutationsWithRepetitions.png"
        fillMode: Image.Pad
    }

    Text {
        id: text_inputN
        x: 22
        y: 169
        text: qsTr("Введите числа n₁, n₂, ..., nₖ через пробел:")
        font.pixelSize: 14
    }

    TextInput {
        id: textInputN
        x: 281
        y: 169
        width: 70
        height: 19
        font.pixelSize: 14
        clip: true
    }

    Button {
        id: button_summarize
        x: 355
        y: 169
        width: 70
        height: 19
        text: qsTr("Считать")
        property var answer: 1

        onClicked: {
            answer = calculator.permutations_with_repetitions(textInputN.text)
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
        icon.color: "#9b9b9b"

        onClicked: {
            ld.source=""
        }

    }

}