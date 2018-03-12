; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-msg)


;//! \htmlinclude SnapFootPrintInput.msg.html

(cl:defclass <SnapFootPrintInput> (roslisp-msg-protocol:ros-message)
  ((input_pose
    :reader input_pose
    :initarg :input_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (lleg_pose
    :reader lleg_pose
    :initarg :lleg_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (rleg_pose
    :reader rleg_pose
    :initarg :rleg_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SnapFootPrintInput (<SnapFootPrintInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SnapFootPrintInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SnapFootPrintInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-msg:<SnapFootPrintInput> is deprecated: use jsk_interactive_marker-msg:SnapFootPrintInput instead.")))

(cl:ensure-generic-function 'input_pose-val :lambda-list '(m))
(cl:defmethod input_pose-val ((m <SnapFootPrintInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:input_pose-val is deprecated.  Use jsk_interactive_marker-msg:input_pose instead.")
  (input_pose m))

(cl:ensure-generic-function 'lleg_pose-val :lambda-list '(m))
(cl:defmethod lleg_pose-val ((m <SnapFootPrintInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:lleg_pose-val is deprecated.  Use jsk_interactive_marker-msg:lleg_pose instead.")
  (lleg_pose m))

(cl:ensure-generic-function 'rleg_pose-val :lambda-list '(m))
(cl:defmethod rleg_pose-val ((m <SnapFootPrintInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:rleg_pose-val is deprecated.  Use jsk_interactive_marker-msg:rleg_pose instead.")
  (rleg_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SnapFootPrintInput>) ostream)
  "Serializes a message object of type '<SnapFootPrintInput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lleg_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rleg_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SnapFootPrintInput>) istream)
  "Deserializes a message object of type '<SnapFootPrintInput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lleg_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rleg_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SnapFootPrintInput>)))
  "Returns string type for a message object of type '<SnapFootPrintInput>"
  "jsk_interactive_marker/SnapFootPrintInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SnapFootPrintInput)))
  "Returns string type for a message object of type 'SnapFootPrintInput"
  "jsk_interactive_marker/SnapFootPrintInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SnapFootPrintInput>)))
  "Returns md5sum for a message object of type '<SnapFootPrintInput>"
  "07fc9b79352f12bc13742f589662de86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SnapFootPrintInput)))
  "Returns md5sum for a message object of type 'SnapFootPrintInput"
  "07fc9b79352f12bc13742f589662de86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SnapFootPrintInput>)))
  "Returns full string definition for message of type '<SnapFootPrintInput>"
  (cl:format cl:nil "geometry_msgs/PoseStamped input_pose~%geometry_msgs/Pose lleg_pose~%geometry_msgs/Pose rleg_pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SnapFootPrintInput)))
  "Returns full string definition for message of type 'SnapFootPrintInput"
  (cl:format cl:nil "geometry_msgs/PoseStamped input_pose~%geometry_msgs/Pose lleg_pose~%geometry_msgs/Pose rleg_pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SnapFootPrintInput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lleg_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rleg_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SnapFootPrintInput>))
  "Converts a ROS message object to a list"
  (cl:list 'SnapFootPrintInput
    (cl:cons ':input_pose (input_pose msg))
    (cl:cons ':lleg_pose (lleg_pose msg))
    (cl:cons ':rleg_pose (rleg_pose msg))
))
