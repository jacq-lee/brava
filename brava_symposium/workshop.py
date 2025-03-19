import cv2
import mediapipe as mp
import numpy as np
import matplotlib.pyplot as plt
import logging
import traceback

mp_drawing = mp.solutions.drawing_utils
mp_pose = mp.solutions.pose
WIN_LEN = 40
OVERLAP = 16
time_counter = 0
DLJ_counter, SLJ_R_counter, SLJ_L_counter, DLR_counter, SLR_R_counter, SLR_L_counter = 0, 0, 0, 0, 0, 0
DLJ_indices, SLJ_R_indices, SLJ_L_indices, DLR_indices, SLR_R_indices, SLR_L_indices = [], [], [], [], [], []

logging.basicConfig(filename='error_log.txt', level=logging.ERROR)

def extract_coordinates(landmarks, landmark_name):
    landmark_dict = {
        "RHip": mp_pose.PoseLandmark.RIGHT_HIP,
        "LHip": mp_pose.PoseLandmark.LEFT_HIP,
        "RKnee": mp_pose.PoseLandmark.RIGHT_KNEE,
        "LKnee": mp_pose.PoseLandmark.LEFT_KNEE,
        "RAnkle": mp_pose.PoseLandmark.RIGHT_ANKLE,
        "LAnkle": mp_pose.PoseLandmark.LEFT_ANKLE,
    }

    landmark_index = landmark_dict.get(landmark_name)
    if landmarks and landmark_index is not None:
        landmark = landmarks.landmark[landmark_index]
        # print(type(landmark))
        return landmark.x, landmark.y
    return None, None

def make_detections():
    cap = cv2.VideoCapture(1) # Change depending on laptop 
    # Check if the camera was successfully opened
    if not cap.isOpened():
        print("Error: Could not open video capture.")  # Error message if camera access fails
        exit()  # Exit the program if the camera is not accessible

    # Get the default frame width and height (otherwise visualization is strange)
    frame_width = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
    frame_height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))

    # Set up new instance of MediaPipe feed.
    try:
        with mp_pose.Pose(min_detection_confidence=0.5, min_tracking_confidence=0.5) as pose:  # For higher confidence (accurrate detection), can increase the confidence numbers.
            window = [None] * WIN_LEN
            prev_win = []
            counter = 0
            time_counter = 0
            start_index = 0
            m = 0
            initial_increment_len = 40
            increment_len = initial_increment_len
            # is_first = True
            while cap.isOpened():
                print(counter)
                ret, frame = cap.read()
                if ret:
                    image = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
                    image.flags.writeable = False  # Saves memory when passed to pose estimation model.
                    # Makes detection.
                    results = pose.process(image)
                    if results.pose_landmarks:
                        right_hip = results.pose_landmarks.landmark[mp_pose.PoseLandmark.RIGHT_HIP]
                        y_rhip = right_hip.y
                        # x_rhip, y_rhip = extract_coordinates(results.pose_landmarks, "RHip")
                        # x_lhip, y_lhip = extract_coordinates(results.pose_landmarks, "LHip")
                        # x_rknee, y_rknee = extract_coordinates(results.pose_landmarks, "RKnee")
                        # x_lknee, y_lknee = extract_coordinates(results.pose_landmarks, "LKnee")
                        # x_rankle, y_rankle = extract_coordinates(results.pose_landmarks, "RAnkle")
                        # x_lankle, y_lankle = extract_coordinates(results.pose_landmarks, "LAnkle")
                    if y_rhip is not None:
                        # Store RHip x-coordinate in the window at the current position
                        window[start_index + counter] = y_rhip
                    else:
                        window[start_index + counter] = None  # If no detection, add None


                    # print(f"m={m}")
                    # print(f"time_counter={time_counter}")
                    # window[start_index + counter]=m
                    # print(INCREMENT_LEN)
                    # if is_first:
                        # is_first = False
                    counter += 1
                    if counter >= increment_len: 
                        # print(counter)
                        # print(increment_len)
                        increment_len = WIN_LEN - OVERLAP
                        start_index = OVERLAP
                        # print(f"counter={counter}")
                        # print(f"INCREMENT_LEN={increment_len}")
                        # print(len(window))


                        # print("test")q
                        # print(m)
                        prev_win = list(window)
                        print("original window:")
                        print(window)
                        # print(len(window))
                        window[:OVERLAP] = window[-OVERLAP:]
                        window[OVERLAP:] = [None] * (len(window) - OVERLAP)
                        # print("new window:")
                        # print(window)
                        # print(window)
                        counter = 0
                    m += 1
                    time_counter += 1

                    # print("hello")
                    # print(frame.shape)
                    # Recolour the image (feed comes in form of BGR, pass to MediaPipe in form of RGB).
                    
                    # Recolour image back to BGR to re-render using opencv.
                    image.flags.writeable = True
                    image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)

                    # Render detections.
                    mp_drawing.draw_landmarks(
                        image, results.pose_landmarks, mp_pose.POSE_CONNECTIONS, 
                        mp_drawing.DrawingSpec(color=(245, 117, 66), thickness=2, circle_radius=2),
                        mp_drawing.DrawingSpec(color=(245, 66, 230), thickness=2, circle_radius=2)
                    )
                    
                    cv2.imshow('Mediapipe Feed', image)

                    if cv2.waitKey(10) & 0xFF == ord('q'):
                        break
            # print(window)
            cap.release()
            cv2.destroyAllWindows()
    except Exception as e: 
        logging.error(f"Error occurred: {str(e)}")
        logging.error("Traceback: ")
        logging.error(traceback.format_exc())


make_detections()
# print(count)