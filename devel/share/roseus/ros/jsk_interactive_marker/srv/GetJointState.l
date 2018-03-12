;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::GetJointState)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'GetJointState (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETJOINTSTATE")
  (make-package "JSK_INTERACTIVE_MARKER::GETJOINTSTATE"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETJOINTSTATEREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::GETJOINTSTATEREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETJOINTSTATERESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::GETJOINTSTATERESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass jsk_interactive_marker::GetJointStateRequest
  :super ros::object
  :slots ())

(defmethod jsk_interactive_marker::GetJointStateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass jsk_interactive_marker::GetJointStateResponse
  :super ros::object
  :slots (_joint_state ))

(defmethod jsk_interactive_marker::GetJointStateResponse
  (:init
   (&key
    ((:joint_state __joint_state) (instance sensor_msgs::JointState :init))
    )
   (send-super :init)
   (setq _joint_state __joint_state)
   self)
  (:joint_state
   (&rest __joint_state)
   (if (keywordp (car __joint_state))
       (send* _joint_state __joint_state)
     (progn
       (if __joint_state (setq _joint_state (car __joint_state)))
       _joint_state)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState _joint_state
    (send _joint_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState _joint_state
       (send _joint_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState _joint_state
     (send _joint_state :deserialize buf ptr-) (incf ptr- (send _joint_state :serialization-length))
   ;;
   self)
  )

(defclass jsk_interactive_marker::GetJointState
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::GetJointState :md5sum-) "9ca061465ef0ed08771ed240c43789f5")
(setf (get jsk_interactive_marker::GetJointState :datatype-) "jsk_interactive_marker/GetJointState")
(setf (get jsk_interactive_marker::GetJointState :request) jsk_interactive_marker::GetJointStateRequest)
(setf (get jsk_interactive_marker::GetJointState :response) jsk_interactive_marker::GetJointStateResponse)

(defmethod jsk_interactive_marker::GetJointStateRequest
  (:response () (instance jsk_interactive_marker::GetJointStateResponse :init)))

(setf (get jsk_interactive_marker::GetJointStateRequest :md5sum-) "9ca061465ef0ed08771ed240c43789f5")
(setf (get jsk_interactive_marker::GetJointStateRequest :datatype-) "jsk_interactive_marker/GetJointStateRequest")
(setf (get jsk_interactive_marker::GetJointStateRequest :definition-)
      "---
sensor_msgs/JointState joint_state

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
")

(setf (get jsk_interactive_marker::GetJointStateResponse :md5sum-) "9ca061465ef0ed08771ed240c43789f5")
(setf (get jsk_interactive_marker::GetJointStateResponse :datatype-) "jsk_interactive_marker/GetJointStateResponse")
(setf (get jsk_interactive_marker::GetJointStateResponse :definition-)
      "---
sensor_msgs/JointState joint_state

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
")



(provide :jsk_interactive_marker/GetJointState "9ca061465ef0ed08771ed240c43789f5")


