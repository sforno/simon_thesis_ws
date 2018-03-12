;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::MarkerPose)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'MarkerPose (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE")
  (make-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))

(in-package "ROS")
;;//! \htmlinclude MarkerPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*GENERAL*" (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(shadow '*GENERAL* (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(defconstant jsk_interactive_marker::MarkerPose::*GENERAL* 0)
(intern "*HEAD_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(shadow '*HEAD_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(defconstant jsk_interactive_marker::MarkerPose::*HEAD_MARKER* 1)
(intern "*RHAND_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(shadow '*RHAND_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(defconstant jsk_interactive_marker::MarkerPose::*RHAND_MARKER* 2)
(intern "*LHAND_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(shadow '*LHAND_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(defconstant jsk_interactive_marker::MarkerPose::*LHAND_MARKER* 3)
(intern "*RLEG_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(shadow '*RLEG_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(defconstant jsk_interactive_marker::MarkerPose::*RLEG_MARKER* 4)
(intern "*LLEG_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(shadow '*LLEG_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(defconstant jsk_interactive_marker::MarkerPose::*LLEG_MARKER* 5)
(intern "*BASE_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(shadow '*BASE_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(defconstant jsk_interactive_marker::MarkerPose::*BASE_MARKER* 6)
(intern "*RFINGER_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(shadow '*RFINGER_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(defconstant jsk_interactive_marker::MarkerPose::*RFINGER_MARKER* 7)
(intern "*LFINGER_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(shadow '*LFINGER_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(defconstant jsk_interactive_marker::MarkerPose::*LFINGER_MARKER* 8)
(intern "*SPHERE_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(shadow '*SPHERE_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERPOSE"))
(defconstant jsk_interactive_marker::MarkerPose::*SPHERE_MARKER* 9)
(defclass jsk_interactive_marker::MarkerPose
  :super ros::object
  :slots (_type _pose _marker_name ))

(defmethod jsk_interactive_marker::MarkerPose
  (:init
   (&key
    ((:type __type) 0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:marker_name __marker_name) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _pose __pose)
   (setq _marker_name (string __marker_name))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:marker_name
   (&optional __marker_name)
   (if __marker_name (setq _marker_name __marker_name)) _marker_name)
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; string _marker_name
    4 (length _marker_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; string _marker_name
       (write-long (length _marker_name) s) (princ _marker_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _marker_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _marker_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get jsk_interactive_marker::MarkerPose :md5sum-) "cbb82805055f8f87cec211c5459c476c")
(setf (get jsk_interactive_marker::MarkerPose :datatype-) "jsk_interactive_marker/MarkerPose")
(setf (get jsk_interactive_marker::MarkerPose :definition-)
      "uint8 GENERAL=0
uint8 HEAD_MARKER=1
uint8 RHAND_MARKER=2
uint8 LHAND_MARKER=3
uint8 RLEG_MARKER=4
uint8 LLEG_MARKER=5
uint8 BASE_MARKER=6
uint8 RFINGER_MARKER=7
uint8 LFINGER_MARKER=8
uint8 SPHERE_MARKER=9

int8 type
geometry_msgs/PoseStamped pose
string marker_name


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :jsk_interactive_marker/MarkerPose "cbb82805055f8f87cec211c5459c476c")


