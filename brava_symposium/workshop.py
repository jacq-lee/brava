import cv2
import mediapipe as mp
import numpy as np
import matplotlib.pyplot as plt
import logging
import traceback
import copy
import scipy.signal as sp

mp_drawing = mp.solutions.drawing_utils
mp_pose = mp.solutions.pose
WIN_LEN = 40
OVERLAP = 16
time_counter = 0
# DLJ_counter, SLJ_R_counter, SLJ_L_counter, DLR_counter, SLR_R_counter, SLR_L_counter = 0, 0, 0, 0, 0, 0
# DLJ_indices, SLJ_R_indices, SLJ_L_indices, DLR_indices, SLR_R_indices, SLR_L_indices = [], [], [], [], [], []

counter_dict = {
    'DLJ': 0,
    'SLJ_R': 0,
    'SLJ_L': 0,
    'DLR': 0,
    'SLR_R': 0,
    'SLR_L': 0
}

indices_dict = {
    'DLJ': [],
    'SLJ_R': [],
    'SLJ_L': [],
    'DLR': [],
    'SLR_R': [],
    'SLR_L': []
}

prev_max_index = {
    'DLJ': 0,
    'SLJ' : 0
}


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
        return landmark.x, landmark.y
    return None, None

def plot_rhip(window):
    rhip_coords = window.get("RHip", [])
    frame_numbers = list(range(len(rhip_coords)))
    y_vals = [c[1] for c in rhip_coords if c is not None]
    valid_frames = [frame_numbers[i] for i in range(len(rhip_coords)) if rhip_coords[i] is not None]
    
    plt.figure(figsize=(10, 6))
    plt.plot(valid_frames, y_vals, marker='o', label="RHip Y-Coordinate")
    plt.xlabel("Frame Number")
    plt.ylabel("Y Coordinate")
    plt.title("RHip Y-Coordinate Over Frames")
    plt.legend()

def extract_from_window(window, tag):
    """Extract the landmark coordinates from the big landmark coordinate dictionary"""
    tag_coords = window.get(tag, [])
    x = np.array([coord[0] for coord in tag_coords if coord is not None])
    y = np.array([coord[1] for coord in tag_coords if coord is not None])
    return x, y

def length_cal(x1, x2, y1, y2):
    """Calcutes the length between two 2D points"""
    return np.sqrt(np.square(x2 - x1) + np.square(y2 - y1))


def normalize_data(data: np.ndarray, x_rhip: np.ndarray, y_rhip: np.ndarray, x_rknee: np.ndarray, y_rknee: np.ndarray, x_lhip: np.ndarray, y_lhip: np.ndarray, x_lknee: np.ndarray, y_lknee: np.ndarray, norm_start: bool=False):
    """Normalizes the data using the femur length at the beginning of the arrays.
    
    Note: consider altering in the future to normalize depending on the time (e.g. frame by frame).
    """
    if x_rhip[0] == None or y_rhip[0] == None or x_rknee[0] == None or y_rknee[0] == None or x_lhip[0] == None or y_lhip[0] == None or x_lknee[0] == None or y_lknee[0] == None:
        print("Warning: First element of landmark array is still None.")
        return
    femur_length_r = length_cal(x_rhip[0], y_rhip[0], x_rknee[0], y_rknee[0])
    femur_length_l = length_cal(x_lhip[0], y_lhip[0], x_lknee[0], y_lknee[0])

    femur_lens_r = []
    femur_lens_l = []

    arr_len = min(len(x_rhip), len(y_rhip), len(x_rknee), len(y_rknee), len(x_lhip), len(y_lhip), len(x_lknee), len(y_lknee))
    for i in np.linspace(0.1, 0.9, 9):
        idx = int(i*arr_len)
        femur_lens_r.append(length_cal(x_rhip[idx], x_rknee[idx], y_rhip[idx], y_rknee[idx]))
        femur_lens_l.append(length_cal(x_lhip[idx], x_lknee[idx], y_lhip[idx], y_lknee[idx]))
    femur_len_avg_r = np.mean(femur_lens_r)
    femur_len_avg_l = np.mean(femur_lens_l)
    femur_len_avg = (femur_len_avg_r + femur_len_avg_l)/2
    if norm_start:
        femur_length = (femur_length_r + femur_length_l) / 2
        data_norm = data / femur_length
    else:
        
        data_norm = data / femur_len_avg
    return data_norm

def calculate_abs_diff(data):
    """Calculate the absolute difference"""
    abs_diff = abs(np.max(data) - np.min(data))
    max_index = np.argmax(data)
    min_index = np.argmin(data)
    return abs_diff, max_index, min_index

def calculate_mag_diff(data):
    """Calculate the difference"""
    up = False
    abs_diff = abs(np.max(data) - np.min(data))
    max_index = np.argmax(data)
    min_index = np.argmin(data)
    if max_index > min_index:
        up = True
    return up

def calculate_angle(x1, y1, x2, y2, x3, y3):
    """Calculate angle between two vectors (passing in arrays of coordinates)"""
    v1 = np.column_stack((x1, y1)) - np.column_stack((x2, y2))
    v2 = np.column_stack((x3, y3)) - np.column_stack((x2, y2))
    dot_product = np.einsum('ij,ij->i', v1, v2)
    norm_v1 = np.linalg.norm(v1, axis=1)
    norm_v2 = np.linalg.norm(v2, axis=1)
    cos_theta = np.clip(dot_product / (norm_v1 * norm_v2), -1.0, 1.0)
    angles = np.degrees(np.arccos(cos_theta))
    return angles

def calculate_peak_diff(data):
    """DLJ Function - Calculate the difference between the maximum and minimum (peak so slope = 0)"""
    peaks, _ = sp.find_peaks(data)
    neg_peaks, _ = sp.find_peaks(-data)

    if len(peaks) == 0 or len(neg_peaks) == 0:
        print("Warning: No peaks found. Returning default value.")
        return None, None, None  # Or return a default value
    
    abs_diff = abs(np.max(data[peaks]) - np.min(data[neg_peaks]))
    return peaks, neg_peaks, abs_diff

def algorithm_logic(window, prev_window, counter_dict, indices_dict, prev_max_index, i):
    # print(f"i = {i}")
    # Extract data.
    x_rknee, y_rknee =      extract_from_window(window, "RKnee")
    x_lknee, y_lknee =      extract_from_window(window, "LKnee")
    x_rankle, y_rankle =    extract_from_window(window, "RAnkle")
    x_lankle, y_lankle =    extract_from_window(window, "LAnkle")
    x_rhip, y_rhip =        extract_from_window(window, "RHip")
    x_lhip, y_lhip =        extract_from_window(window, "LHip")
    frame_array = np.arange(len(x_rknee))
    # print(len(frame_array))
    # Ignore applying a filter for now!

    # Normalize y-coordinates.
    norm_y_rknee =          normalize_data(y_rknee,     x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)
    norm_y_lknee =          normalize_data(y_lknee,     x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)
    norm_y_rankle =         normalize_data(y_rankle,    x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)
    norm_y_lankle =         normalize_data(y_lankle,    x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)
    norm_y_rhip =           normalize_data(y_rhip,      x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)
    norm_y_lhip =           normalize_data(y_lhip,      x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)

    # Nornalize x-coordinate.
    norm_x_rknee =          normalize_data(x_rknee,     x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)
    norm_x_lknee =          normalize_data(x_lknee,     x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)
    norm_x_rankle =         normalize_data(x_rankle,    x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)
    norm_x_lankle =         normalize_data(x_lankle,    x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)
    norm_x_rhip =           normalize_data(x_rhip,      x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)
    norm_x_lhip =           normalize_data(x_lhip,      x_rhip, y_rhip, x_rknee, y_rknee, x_lhip, y_lhip, x_lknee, y_lknee)
    
    # Delta hip height.
    delta_hip_height_r, max_ind_hip_height_r, min_ind_hip_height_r =    calculate_abs_diff(norm_y_rhip)
    delta_hip_height_l, max_ind_hip_height_l, min_ind_hip_height_l=     calculate_abs_diff(norm_y_lhip)
    avg_delta_hip_height = (delta_hip_height_r + delta_hip_height_l) / 2

    # Hip difference (used for DLR).
    up_r = calculate_mag_diff(norm_y_rhip)
    up_l = calculate_mag_diff(norm_y_lhip)

    # Delta hip velocity
    hip_vel_r = np.diff(norm_y_rhip) / np.diff(frame_array)
    hip_vel_l = np.diff(norm_y_lhip) / np.diff(frame_array)
    delta_hip_vel_l, max_hip_vel_l, min_hip_vel_l = calculate_abs_diff(hip_vel_r)
    delta_hip_vel_r, max_hip_vel_r, min_hip_vel_r = calculate_abs_diff(hip_vel_l)
    avg_delta_hip_vel = (delta_hip_vel_l + delta_hip_vel_r) / 2

    # Knee Angle Correlation Using Mean Average Difference
    angles_R_knee = calculate_angle(norm_x_rhip, norm_y_rhip, norm_x_rknee, norm_y_rknee, norm_x_rankle, norm_y_rankle)
    angles_L_knee = calculate_angle(norm_x_lhip, norm_y_lhip, norm_x_lknee, norm_y_lknee, norm_x_lankle, norm_y_lankle)
    mad = np.mean(np.abs(angles_R_knee - angles_L_knee))

    if mad < 10:
        mad_multiplier = 1
    else:
        mad_multiplier = -1

    peaks, neg_peaks, abs_diff_peaks = calculate_peak_diff(norm_y_rhip)
    if peaks is not None and len(peaks) > 0:
        peak_values = norm_y_rhip[peaks]
        max_peak_index = np.argmax(peak_values)
        largest_peak = peaks[max_peak_index]
        largest_peak_value = peak_values[max_peak_index]
    else:
        print("Warning: No peaks found.")
        largest_peak = None
        largest_peak_value = None


    x_scatter_val = avg_delta_hip_vel*mad_multiplier
    y_scatter_val = avg_delta_hip_height*mad_multiplier
#################### CLASSIFICATION LOGIC ####################
    ############### DLJ ###############
    if y_scatter_val > 0.7 and x_scatter_val > 0.1:
        print(f"window : maybe DLJ")
        if abs_diff_peaks > 0.7:
            counter_dict['DLJ'] += 1

            indices_dict['DLJ'].append(i)
        if largest_peak >= WIN_LEN - OVERLAP:
        # if WIN_LEN - OVERLAP - 2 <= largest_peak <= WIN_LEN - OVERLAP + 2:
            prev_max_index['DLJ'] = largest_peak
            indices_dict['DLJ'].append(i)
        elif largest_peak < OVERLAP:
            if largest_peak +  (WIN_LEN - OVERLAP) == prev_max_index['DLJ']:
                counter_dict['DLJ'] -= 1
                indices_dict['DLJ'].pop()
    ################################### 

    ############### SLJ ###############
    if y_scatter_val < -0.7 and x_scatter_val < -0.1:
        # print(f"window {i} : maybe SLJ")
        ##### L or R #####
        height_r_ankle = np.mean(y_rankle)
        height_l_ankle = np.mean(y_lankle)
        if height_l_ankle < height_r_ankle:
            working_leg = "l"
        else:
            working_leg = "r"
        print(f"SLJ working_leg = {working_leg}")
        ###################
        if abs_diff_peaks > 0.7:
            if working_leg == "l":
                counter_dict['SLJ_L'] += 1
                indices_dict['SLJ_L'].append(i)
            elif working_leg == "r":
                counter_dict['SLJ_R'] += 1
                indices_dict['SLJ_R'].append(i)
        if largest_peak >= WIN_LEN - OVERLAP:
            prev_max_index['SLJ'] = largest_peak
            if working_leg == "l":
                indices_dict['SLJ_L'].append(i)
            elif working_leg == "r":
                indices_dict['SLJ_R'].append(i)        
        elif largest_peak < OVERLAP:
            if largest_peak +  (WIN_LEN - OVERLAP) == prev_max_index['SLJ']:
                if working_leg == "l":
                    print("popping SLJ_L")
                    counter_dict['SLJ_L'] -= 1
                    indices_dict['SLJ_L'].pop()
                elif working_leg == "r":
                    print("popping SLJ_R")
                    counter_dict['SLJ_R'] -= 1
                    indices_dict['SLJ_R'].pop()
    ################################### 

    print(f"y_scatter_val = {y_scatter_val:.2f}")
    print(f"x_scatter_val = {x_scatter_val:.2f}")
    ############### DLR ###############
    if y_scatter_val > 0.10 and y_scatter_val < 0.4 and x_scatter_val > 0.02 and x_scatter_val < 0.08:
        # print(f"window {i} : maybe DLR")
        print(f"up_l = {up_l}")
        print(f"up_r = {up_r}")

        if up_l or up_r: 
            counter_dict['DLR'] += 1
    ################################### 

    ############### SLR ###############
    if y_scatter_val < -0.10 and y_scatter_val > -0.4 and x_scatter_val < -0.02 and x_scatter_val > -0.08:
        ##### L or R #####
        height_r_ankle = np.mean(y_rankle)
        height_l_ankle = np.mean(y_lankle)
        if height_l_ankle < height_r_ankle:
            working_leg = "l"
        else:
            working_leg = "r"
        print(f"SLR working_leg = {working_leg}")
        ###################

        if up_l and working_leg == 'l': 
            counter_dict['SLR_L'] += 1
        if up_r and working_leg == 'r': 
            counter_dict['SLR_R'] += 1


##############################################################
    # print(y_rknee)
    # print(y_lknee)
    # print(y_rankle)
    # print(y_lankle)
    # print(y_rhip)
    # print(y_lhip)

    # 



def make_detections():
    cap = cv2.VideoCapture(1) # Change depending on laptop 
    # Check if the camera was successfully opened
    if not cap.isOpened():
        print("Error: Could not open video capture.")  # Error message if camera access fails
        exit()  # Exit the program if the camera is not accessible

    # Set up new instance of MediaPipe feed.
    try:
        with mp_pose.Pose(min_detection_confidence=0.5, min_tracking_confidence=0.5) as pose:  # For higher confidence (accurrate detection), can increase the confidence numbers.
            window = {lm: [None] * WIN_LEN for lm in ["RHip", "LHip", "RKnee", "LKnee", "RAnkle", "LAnkle"]} 

            prev_win = []
            counter = 0
            window_num = 0
            time_counter = 0
            start_index = 0
            initial_increment_len = 40
            increment_len = initial_increment_len
            landmarks = {lm: [] for lm in window}

            while cap.isOpened():
                ret, frame = cap.read()
                if ret:
                    image = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
                    image_height, image_width, _ = image.shape # Get the image dimensions to calculate the pixel location.
                    image.flags.writeable = False  # Saves memory when passed to pose estimation model.
                    # Makes detection.
                    results = pose.process(image)
                    if results.pose_landmarks:
                        for lm in window.keys():
                            x, y = extract_coordinates(results.pose_landmarks, lm)
                            if x is not None and y is not None:
                                x, y = x * image_width, (image_height - 1) - y * image_height # Uninvert y-coordinates.
                            window[lm][start_index + counter] = (x, y)
                    counter += 1
                    if counter >= increment_len: 
                        # print(f"time={time_counter}")
                        prev_window = copy.deepcopy(window)
                        print(window)
                        algorithm_logic(window, prev_window, counter_dict, indices_dict, prev_max_index, window_num)
                        for lm in window.keys():
                            points = window[lm]
                            for i in range(len(points) - 1):
                                if points[i] is not None and points[i + 1] is not None:
                                    landmarks[lm].append((points[i], points[i + 1]))
                        
                        increment_len = WIN_LEN - OVERLAP
                        start_index = OVERLAP
                        for lm in window.keys():
        
                            window[lm][:OVERLAP] = window[lm][-OVERLAP:]
                            window[lm][OVERLAP:] = [None] * (len(window[lm]) - OVERLAP)
                        counter = 0
                        window_num += 1
                    time_counter += 1


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
            cap.release()
            cv2.destroyAllWindows()
            plt.show()
            print(counter_dict)

    except Exception as e: 
        logging.error(f"Error occurred: {str(e)}")
        logging.error("Traceback: ")
        logging.error(traceback.format_exc())


make_detections()
# print(count)