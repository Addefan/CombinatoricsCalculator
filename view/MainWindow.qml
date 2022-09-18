import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: main_window
    width: 480
    height: 270
    color: "#c2c2c2"

    Image {
        id: image_permutations
        x: 43
        y: 57
        width: 83
        height: 83
        source: "view/images/Permutations.gif"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image_combinations
        x: 199
        y: 57
        width: 83
        height: 83
        source: "view/images/Combinations.gif"
        fillMode: Image.PreserveAspectCrop
    }

    Image {
        id: image_arrangements
        x: 358
        y: 57
        width: 83
        height: 83
        source: "view/images/Arrangements.gif"
        fillMode: Image.PreserveAspectCrop
    }

    Text {
        id: text_permutations
        x: 22
        y: 18
        text: qsTr("Перестановки")
        font.pixelSize: 18
        font.bold: true
    }

    Text {
        id: text_combinations
        x: 194
        y: 18
        text: qsTr("Сочетания")
        font.pixelSize: 18
        font.bold: true
    }

    Text {
        id: text_arrangements
        x: 344
        y: 18
        text: qsTr("Размещения")
        font.pixelSize: 18
        font.bold: true
    }

    Button {
        id: button_arrangements_with_repetitions
        x: 333
        y: 208
        width: 133
        height: 32
        text: qsTr("С повторениями")

        onClicked: {
            ld.source="view/ArrangementsWithRepetitions.qml"
        }
    }

    Button {
        id: button_combinations_with_repetitions
        x: 174
        y: 208
        width: 133
        height: 32
        text: qsTr("С повторениями")

        onClicked: {
            ld.source="view/CombinationsWithRepetitions.qml"
        }
    }

    Button {
        id: button_permutations_with_repetitions
        x: 18
        y: 208
        width: 133
        height: 32
        text: qsTr("С повторениями")

        onClicked: {
            ld.source="view/PermutationsWithRepetitions.qml"
        }
    }

    Button {
        id: button_combinations_without_repetitions
        x: 174
        y: 164
        width: 133
        height: 32
        text: qsTr("Без повторений")

        onClicked: {
            ld.source="view/CombinationsWithoutRepetitions.qml"
        }
    }

    Button {
        id: button_arrangements_without_repetitions
        x: 333
        y: 164
        width: 133
        height: 32
        text: qsTr("Без повторений")

        onClicked: {
            ld.source="view/ArrangementsWithoutRepetitions.qml"
        }
    }


    Button {
        id: button_permutations_without_repetitions
        x: 18
        y: 164
        width: 133
        height: 32
        text: qsTr("Без повторений")

        onClicked: {
            ld.source="view/PermutationsWithoutRepetitions.qml"
        }
    }

    Loader {
        id: ld
    }

}
