;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::JointTrajectoryWithType)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'JointTrajectoryWithType (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYWITHTYPE")
  (make-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYWITHTYPE"))

(in-package "ROS")
;;//! \htmlinclude JointTrajectoryWithType.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass jsk_interactive_marker::JointTrajectoryWithType
  :super ros::object
  :slots (_header _joint_names _points ))

(defmethod jsk_interactive_marker::JointTrajectoryWithType
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance jsk_interactive_marker::JointTrajectoryPointWithType :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _joint_names __joint_names)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; jsk_interactive_marker/JointTrajectoryPointWithType[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; jsk_interactive_marker/JointTrajectoryPointWithType[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; jsk_interactive_marker/JointTrajectoryPointWithType[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance jsk_interactive_marker::JointTrajectoryPointWithType :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get jsk_interactive_marker::JointTrajectoryWithType :md5sum-) "60e366ad2005e5bee332903472737b12")
(setf (get jsk_interactive_marker::JointTrajectoryWithType :datatype-) "jsk_interactive_marker/JointTrajectoryWithType")
(setf (get jsk_interactive_marker::JointTrajectoryWithType :definition-)
      "std_msgs/Header header
string[] joint_names
jsk_interactive_marker/JointTrajectoryPointWithType[] points

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
MSG: jsk_interactive_marker/JointTrajectoryPointWithType
uint8 JOINT_INTERPOLATION=0
uint8 LINEAR_INTERPOLATION=1
uint8 COLLISION_AVOIDANCE=2

uint8 CLOSE_HAND=10
uint8 OPEN_HAND=11

int8 type
string args
bool wait

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

")



(provide :jsk_interactive_marker/JointTrajectoryWithType "60e366ad2005e5bee332903472737b12")


