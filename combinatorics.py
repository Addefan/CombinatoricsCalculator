import sys
import ctypes
from math import factorial
from PyQt6.QtCore import QUrl, QObject, pyqtSlot
from PyQt6.QtWidgets import QApplication
from PyQt6.QtQuick import QQuickView
from PyQt6.QtGui import QIcon


class CombinatoricsCalculation(QObject):
    @pyqtSlot(int, result=str)
    def permutations_without_repetitions(self, n):
        if not isinstance(n, int):
            return "Ошибка: n должно быть числом"
        if n < 0:
            return "Ошибка: n должно быть положительным"
        result = str(factorial(n))
        if len(result) > 96:
            return "Результат: ответ слишком большой"
        return f"Результат: {result}"

    @pyqtSlot(str, result=str)
    def permutations_with_repetitions(self, n_i):
        n_i = [int(_) for _ in n_i.split()]
        for x in n_i:
            if x < 0:
                return "Ошибка: числа должны быть положительными"
        result = factorial(sum(n_i))
        for element in n_i:
            result //= factorial(element)
        result = str(result)
        if len(result) > 64:
            return "Результат: ответ слишком большой"
        return f"Результат: {result}"

    @pyqtSlot(int, int, result=str)
    def combinations_without_repetitions(self, n, m):
        if not isinstance(n, int):
            return "Ошибка: n должно быть числом"
        if not isinstance(m, int):
            return "Ошибка: m должно быть числом"
        if n < 0:
            return "Ошибка: n должно быть положительным"
        if m < 0:
            return "Ошибка: m должно быть положительным"
        if n < m:
            return "Ошибка: n должно быть не меньше m"
        result = str(factorial(n) // (factorial(n - m) * factorial(m)))
        if len(result) > 64:
            return "Результат: ответ слишком большой"
        return f"Результат: {result}"

    @pyqtSlot(int, int, result=str)
    def combinations_with_repetitions(self, n, m):
        result = self.combinations_without_repetitions(n + m - 1, m)
        return result

    @pyqtSlot(int, int, result=str)
    def arrangements_without_repetitions(self, n, m):
        if not isinstance(n, int):
            return "Ошибка: n должно быть числом"
        if not isinstance(m, int):
            return "Ошибка: m должно быть числом"
        if n < 0:
            return "Ошибка: n должно быть положительным"
        if m < 0:
            return "Ошибка: m должно быть положительным"
        if n < m:
            return "Ошибка: n должно быть не меньше m"
        result = str(factorial(n) // factorial(n - m))
        if len(result) > 64:
            return "Результат: ответ слишком большой"
        return f"Результат: {result}"

    @pyqtSlot(int, int, result=str)
    def arrangements_with_repetitions(self, n, m):
        if not isinstance(n, int):
            return "Ошибка: n должно быть числом"
        if not isinstance(m, int):
            return "Ошибка: m должно быть числом"
        if n < 0:
            return "Ошибка: n должно быть положительным"
        if m < 0:
            return "Ошибка: m должно быть положительным"
        result = str(n ** m)
        if len(result) > 64:
            return "Результат: ответ слишком большой"
        return f"Результат: {result}"


def main():
    app_id = 'Addefan.CombinatoricsCalculator.0.1'
    ctypes.windll.shell32.SetCurrentProcessExplicitAppUserModelID(app_id)
    app = QApplication([])
    app.setApplicationName("Combinatorics Calculator")
    app.setWindowIcon(QIcon("icon.ico"))
    calculator = CombinatoricsCalculation()
    view = QQuickView()
    view.setSource(QUrl(r"view\MainWindow.qml"))
    view.show()
    view.rootContext().setContextProperty("calculator", calculator)
    sys.exit(app.exec())


if __name__ == "__main__":
    main()
