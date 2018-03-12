;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::MoveModel)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'MoveModel (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::MOVEMODEL")
  (make-package "JSK_INTERACTIVE_MARKER::MOVEMODEL"))

(in-package "ROS")
;;//! \htmlinclude MoveModel.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass jsk_interactive_marker::MoveModel
  :super ros::object
  :slots (_header _name _description _joint_state_origin _joint_state_goal _pose_origin _pose_goal ))

(defmethod jsk_interactive_marker::MoveModel
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:description __description) "")
    ((:joint_state_origin __joint_state_origin) (instance sensor_msgs::JointState :init))
    ((:joint_state_goal __joint_state_goal) (instance sensor_msgs::JointState :init))
    ((:pose_origin __pose_origin) (instance geometry_msgs::PoseStamped :init))
    ((:pose_goal __pose_goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _joint_state_origin __joint_state_origin)
   (setq _joint_state_goal __joint_state_goal)
   (setq _pose_origin __pose_origin)
   (setq _pose_goal __pose_goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:joint_state_origin
   (&rest __joint_state_origin)
   (if (keywordp (car __joint_state_origin))
       (send* _joint_state_origin __joint_state_origin)
     (progn
       (if __joint_state_origin (setq _joint_state_origin (car __joint_state_origin)))
       _joint_state_origin)))
  (:joint_state_goal
   (&rest __joint_state_goal)
   (if (keywordp (car __joint_state_goal))
       (send* _joint_state_goal __joint_state_goal)
     (progn
       (if __joint_state_goal (setq _joint_state_goal (car __joint_state_goal)))
       _joint_state_goal)))
  (:pose_origin
   (&rest __pose_origin)
   (if (keywordp (car __pose_origin))
       (send* _pose_origin __pose_origin)
     (progn
       (if __pose_origin (setq _pose_origin (car __pose_origin)))
       _pose_origin)))
  (:pose_goal
   (&rest __pose_goal)
   (if (keywordp (car __pose_goal))
       (send* _pose_goal __pose_goal)
     (progn
       (if __pose_goal (setq _pose_goal (car __pose_goal)))
       _pose_goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ;; sensor_msgs/JointState _joint_state_origin
    (send _joint_state_origin :serialization-length)
    ;; sensor_msgs/JointState _joint_state_goal
    (send _joint_state_goal :serialization-length)
    ;; geometry_msgs/PoseStamped _pose_origin
    (send _pose_origin :serialization-length)
    ;; geometry_msgs/PoseStamped _pose_goal
    (send _pose_goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; sensor_msgs/JointState _joint_state_origin
       (send _joint_state_origin :serialize s)
     ;; sensor_msgs/JointState _joint_state_goal
       (send _joint_state_goal :serialize s)
     ;; geometry_msgs/PoseStamped _pose_origin
       (send _pose_origin :serialize s)
     ;; geometry_msgs/PoseStamped _pose_goal
       (send _pose_goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/JointState _joint_state_origin
     (send _joint_state_origin :deserialize buf ptr-) (incf ptr- (send _joint_state_origin :serialization-length))
   ;; sensor_msgs/JointState _joint_state_goal
     (send _joint_state_goal :deserialize buf ptr-) (incf ptr- (send _joint_state_goal :serialization-length))
   ;; geometry_msgs/PoseStamped _pose_origin
     (send _pose_origin :deserialize buf ptr-) (incf ptr- (send _pose_origin :serialization-length))
   ;; geometry_msgs/PoseStamped _pose_goal
     (send _pose_goal :deserialize buf ptr-) (incf ptr- (send _pose_goal :serialization-length))
   ;;
   self)
  )

(setf (get jsk_interactive_marker::MoveModel :md5sum-) "61edcddd6ca50e876e68d4fcf06c90f6")
(setf (get jsk_interactive_marker::MoveModel :datatype-) "jsk_interactive_marker/MoveModel")
(setf (get jsk_interactive_marker::MoveModel :definition-)
      "std_msgs/Header header
string name
string description
sensor_msgs/JointState joint_state_origin
sensor_msgs/JointState joint_state_goal
geometry_msgs/PoseStamped pose_origin
geometry_msgs/PoseStamped pose_goal


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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :jsk_interactive_marker/MoveModel "61edcddd6ca50e876e68d4fcf06c90f6")


