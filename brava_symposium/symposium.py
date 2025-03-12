# Import Modules
import random
import sys
from PySide6 import QtCore, QtGui, QtWidgets
from PySide6.QtCore import *
from PySide6.QtGui import *
from PySide6.QtWidgets import (
    QApplication, QLabel, QMainWindow, QPushButton, QSizePolicy, QVBoxLayout, QWidget
)
import cv2


class BravaWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Brava")
        self.centralWidget = CentralWidget()
        self.setCentralWidget(self.centralWidget)


class CentralWidget(QWidget):
    def __init__(self):
        super().__init__()

        self.hello = ["Hallo Welt", "Hei maailma", "Hola Mundo", "Привет мир"]

        self.button = QPushButton("Click me!")
        self.text = QLabel("Hello World", alignment=Qt.AlignCenter)
        self.feedlabel = QLabel("Video Feed Loading...", alignment=Qt.AlignCenter)
        self.feedlabel.setSizePolicy(QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Expanding)

        self.layout = QVBoxLayout(self)
        self.layout.addWidget(self.text)
        self.layout.addWidget(self.feedlabel)
        self.layout.addWidget(self.button)

        # self.button.clicked.connect(self.magic)

        # set up the video feed
        self.button.clicked.connect(self.CancelFeed)
        self.video_worker = CVWorker()
        self.video_worker.start()
        self.video_worker.ImageUpdate.connect(self.ImageUpdateSlot)

    @QtCore.Slot()
    def magic(self):
        self.text.setText(random.choice(self.hello))

    @QtCore.Slot(QImage)  # (optional) decorator to indicate what object the signal will provide.
    def ImageUpdateSlot(self, Image):
        self.feedlabel.setPixmap(QPixmap.fromImage(Image))

    def CancelFeed(self):
        print('cancel feed')
        self.video_worker.stop()


# FPV thread
class CVWorker(QThread):
    ImageUpdate = QtCore.Signal(QImage)
    
    def run(self):
        print('\nrun feed')
        self.ThreadActive = True       
        Capture = cv2.VideoCapture(0) 

        while self.ThreadActive:
            ret, frame = Capture.read()
            if ret:
                Image = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
                ConvertToQtFormat = QImage(Image.data, Image.shape[1], Image.shape[0], QImage.Format_RGB888)
                Pic = ConvertToQtFormat.scaled(640, 480, Qt.KeepAspectRatio)
                self.ImageUpdate.emit(Pic)
        Capture.release()
            
    def stop(self):
        print('stop feed')
        self.ThreadActive = False
        self.quit()


if __name__ == "__main__":
    app = QApplication([])

    widget = BravaWindow()
    widget.resize(800, 600)
    widget.show()

    sys.exit(app.exec())
