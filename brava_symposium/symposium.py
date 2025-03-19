from collections import deque
import random
import sys

import cv2 as cv
import mediapipe as mp
from PySide6 import QtCore, QtGui, QtWidgets
from PySide6.QtCore import *
from PySide6.QtGui import *
from PySide6.QtWidgets import (
    QApplication, QLabel, QMainWindow, QPushButton, QSpacerItem, QSizePolicy, QVBoxLayout, QWidget
)
import numpy as np
from collections import deque
import logging
import traceback
logging.basicConfig(filename='error_log.txt', level=logging.ERROR)
# Initialize Mediapipe Pose
mp_pose = mp.solutions.pose
pose = mp_pose.Pose()

WIN_LEN = 40
OVERLAP = 16

class BravaWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Brava")
        self.centralWidget = CentralWidget()
        self.setCentralWidget(self.centralWidget)


class CentralWidget(QWidget):
    def __init__(self):
        super().__init__()

        self.font = "Figtree"

        self.button = QPushButton("Click me!")
        self.title_label = QLabel("Brava Demo\nLandmark Detection", alignment=Qt.AlignCenter)
        self.feedlabel = QLabel("Video Feed Loading...", alignment=Qt.AlignCenter)
        self.feedlabel.setSizePolicy(QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Expanding)

        # # Set Figtree font, make it bold, and increase font size
        # font = QFont(self.font)
        # font = QFont(self.font)
        # font.setBold(True)
        # font.setPointSize(24)  # Increase font size to 18
        # self.title_label.setFont(font)

        self.layout = QVBoxLayout(self)
        self.layout.addWidget(self.title_label)
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
        # Buffer to store last 30 frames
        frame_buffer = deque(maxlen=30)

        self.ThreadActive = True       
        cap = cv.VideoCapture(1) 
        window = [None] * WIN_LEN
        prev_win = []
        counter = 0
        start_index = 0
        time_counter = 0
        m = 0
        initial_increment_len = 40
        increment_len = initial_increment_len
        while self.ThreadActive:

            ret, frame = cap.read()
            # frame_width = cap.get(cv.CAP_PROP_FRAME_WIDTH)  # Auto: 640.0
            # frame_height = cap.get(cv.CAP_PROP_FRAME_HEIGHT)  # Auto: 480.0
            
            if ret:  # If frame is read correctly.
                ### WINDOW LOGIC ####
                window[start_index + counter]=m
                counter += 1
                # print("test")
                # print(f"incremenent_len={increment_len}")
                # print(f"counter={counter}")

                if counter >= increment_len: 
                    increment_len = WIN_LEN - OVERLAP
                    start_index = OVERLAP
                    prev_win = list(window)
                    print("original window:")
                    print(window)
                    window[:OVERLAP] = window[-OVERLAP:]
                    window[OVERLAP:] = [None] * (len(window) - OVERLAP)
                    counter = 0
                m += 1
                time_counter += 1
                ### END OF WINDOW LOGIC ###

                # ret = cap.set(cv.CAP_PROP_FRAME_WIDTH, 1920)
                # ret = cap.set(cv.CAP_PROP_FRAME_HEIGHT, 1080)
                    
                # Convert frame to RGB (MediaPipe requires RGB input)
                rgb_frame = cv.cvtColor(frame, cv.COLOR_BGR2RGB)

                # Process the frame with MediaPipe
                results = pose.process(rgb_frame)

                # Store keypoints if pose is detected
                if results.pose_landmarks:
                    keypoints = []
                    for landmark in results.pose_landmarks.landmark:
                        x, y, z = landmark.x, landmark.y, landmark.z
                        keypoints.append((x, y, z))
                    
                    # Add the keypoints of the current frame to the buffer
                    frame_buffer.append(keypoints)

                # Draw landmarks on the frame
                if results.pose_landmarks:
                    mp.solutions.drawing_utils.draw_landmarks(
                        frame, results.pose_landmarks, mp_pose.POSE_CONNECTIONS
                    )
                    # Convert frame back to BGR after drawing landmarks
                    rgb_frame = cv.cvtColor(frame, cv.COLOR_BGR2RGB)

                # Use frame_bgr in QImage
                ConvertToQtFormat = QImage(rgb_frame.data, rgb_frame.shape[1], rgb_frame.shape[0], QImage.Format_RGB888)
                Pic = ConvertToQtFormat.scaled(640, 480, Qt.KeepAspectRatio)
                self.ImageUpdate.emit(ConvertToQtFormat)

                if time_counter > 2700:
                    print("ok here")
                    time_counter = 0
        cap.release()
            
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
