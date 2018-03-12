; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-msg)


;//! \htmlinclude PoseStampedWithName.msg.html

(cl:defclass <PoseStampedWithName> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass PoseStampedWithName (<PoseStampedWithName>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseStampedWithName>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseStampedWithName)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-msg:<PoseStampedWithName> is deprecated: use jsk_interactive_marker-msg:PoseStampedWithName instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PoseStampedWithName>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:name-val is deprecated.  Use jsk_interactive_marker-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PoseStampedWithName>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:pose-val is deprecated.  Use jsk_interactive_marker-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseStampedWithName>) ostream)
  "Serializes a message object of type '<PoseStampedWithName>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseStampedWithName>) istream)
  "Deserializes a message object of type '<PoseStampedWithName>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseStampedWithName>)))
  "Returns string type for a message object of type '<PoseStampedWithName>"
  "jsk_interactive_marker/PoseStampedWithName")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseStampedWithName)))
  "Returns string type for a message object of type 'PoseStampedWithName"
  "jsk_interactive_marker/PoseStampedWithName")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseStampedWithName>)))
  "Returns md5sum for a message object of type '<PoseStampedWithName>"
  "8377dd3ee630b796499a6be053df1d41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseStampedWithName)))
  "Returns md5sum for a message object of type 'PoseStampedWithName"
  "8377dd3ee630b796499a6be053df1d41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseStampedWithName>)))
  "Returns full string definition for message of type '<PoseStampedWithName>"
  (cl:format cl:nil "string name~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseStampedWithName)))
  "Returns full string definition for message of type 'PoseStampedWithName"
  (cl:format cl:nil "string name~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseStampedWithName>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseStampedWithName>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseStampedWithName
    (cl:cons ':name (name msg))
    (cl:cons ':pose (pose msg))
))
