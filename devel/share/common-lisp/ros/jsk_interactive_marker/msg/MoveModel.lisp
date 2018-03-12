; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-msg)


;//! \htmlinclude MoveModel.msg.html

(cl:defclass <MoveModel> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (joint_state_origin
    :reader joint_state_origin
    :initarg :joint_state_origin
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (joint_state_goal
    :reader joint_state_goal
    :initarg :joint_state_goal
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (pose_origin
    :reader pose_origin
    :initarg :pose_origin
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (pose_goal
    :reader pose_goal
    :initarg :pose_goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass MoveModel (<MoveModel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveModel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveModel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-msg:<MoveModel> is deprecated: use jsk_interactive_marker-msg:MoveModel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MoveModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:header-val is deprecated.  Use jsk_interactive_marker-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MoveModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:name-val is deprecated.  Use jsk_interactive_marker-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <MoveModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:description-val is deprecated.  Use jsk_interactive_marker-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'joint_state_origin-val :lambda-list '(m))
(cl:defmethod joint_state_origin-val ((m <MoveModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:joint_state_origin-val is deprecated.  Use jsk_interactive_marker-msg:joint_state_origin instead.")
  (joint_state_origin m))

(cl:ensure-generic-function 'joint_state_goal-val :lambda-list '(m))
(cl:defmethod joint_state_goal-val ((m <MoveModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:joint_state_goal-val is deprecated.  Use jsk_interactive_marker-msg:joint_state_goal instead.")
  (joint_state_goal m))

(cl:ensure-generic-function 'pose_origin-val :lambda-list '(m))
(cl:defmethod pose_origin-val ((m <MoveModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:pose_origin-val is deprecated.  Use jsk_interactive_marker-msg:pose_origin instead.")
  (pose_origin m))

(cl:ensure-generic-function 'pose_goal-val :lambda-list '(m))
(cl:defmethod pose_goal-val ((m <MoveModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:pose_goal-val is deprecated.  Use jsk_interactive_marker-msg:pose_goal instead.")
  (pose_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveModel>) ostream)
  "Serializes a message object of type '<MoveModel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_state_origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_state_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveModel>) istream)
  "Deserializes a message object of type '<MoveModel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_state_origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_state_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveModel>)))
  "Returns string type for a message object of type '<MoveModel>"
  "jsk_interactive_marker/MoveModel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveModel)))
  "Returns string type for a message object of type 'MoveModel"
  "jsk_interactive_marker/MoveModel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveModel>)))
  "Returns md5sum for a message object of type '<MoveModel>"
  "61edcddd6ca50e876e68d4fcf06c90f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveModel)))
  "Returns md5sum for a message object of type 'MoveModel"
  "61edcddd6ca50e876e68d4fcf06c90f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveModel>)))
  "Returns full string definition for message of type '<MoveModel>"
  (cl:format cl:nil "std_msgs/Header header~%string name~%string description~%sensor_msgs/JointState joint_state_origin~%sensor_msgs/JointState joint_state_goal~%geometry_msgs/PoseStamped pose_origin~%geometry_msgs/PoseStamped pose_goal~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveModel)))
  "Returns full string definition for message of type 'MoveModel"
  (cl:format cl:nil "std_msgs/Header header~%string name~%string description~%sensor_msgs/JointState joint_state_origin~%sensor_msgs/JointState joint_state_goal~%geometry_msgs/PoseStamped pose_origin~%geometry_msgs/PoseStamped pose_goal~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveModel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'description))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_state_origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_state_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveModel>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveModel
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':description (description msg))
    (cl:cons ':joint_state_origin (joint_state_origin msg))
    (cl:cons ':joint_state_goal (joint_state_goal msg))
    (cl:cons ':pose_origin (pose_origin msg))
    (cl:cons ':pose_goal (pose_goal msg))
))
