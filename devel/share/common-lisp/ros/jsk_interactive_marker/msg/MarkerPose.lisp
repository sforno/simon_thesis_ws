; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-msg)


;//! \htmlinclude MarkerPose.msg.html

(cl:defclass <MarkerPose> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (marker_name
    :reader marker_name
    :initarg :marker_name
    :type cl:string
    :initform ""))
)

(cl:defclass MarkerPose (<MarkerPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MarkerPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MarkerPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-msg:<MarkerPose> is deprecated: use jsk_interactive_marker-msg:MarkerPose instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MarkerPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:type-val is deprecated.  Use jsk_interactive_marker-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MarkerPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:pose-val is deprecated.  Use jsk_interactive_marker-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'marker_name-val :lambda-list '(m))
(cl:defmethod marker_name-val ((m <MarkerPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:marker_name-val is deprecated.  Use jsk_interactive_marker-msg:marker_name instead.")
  (marker_name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MarkerPose>)))
    "Constants for message type '<MarkerPose>"
  '((:GENERAL . 0)
    (:HEAD_MARKER . 1)
    (:RHAND_MARKER . 2)
    (:LHAND_MARKER . 3)
    (:RLEG_MARKER . 4)
    (:LLEG_MARKER . 5)
    (:BASE_MARKER . 6)
    (:RFINGER_MARKER . 7)
    (:LFINGER_MARKER . 8)
    (:SPHERE_MARKER . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MarkerPose)))
    "Constants for message type 'MarkerPose"
  '((:GENERAL . 0)
    (:HEAD_MARKER . 1)
    (:RHAND_MARKER . 2)
    (:LHAND_MARKER . 3)
    (:RLEG_MARKER . 4)
    (:LLEG_MARKER . 5)
    (:BASE_MARKER . 6)
    (:RFINGER_MARKER . 7)
    (:LFINGER_MARKER . 8)
    (:SPHERE_MARKER . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MarkerPose>) ostream)
  "Serializes a message object of type '<MarkerPose>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'marker_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'marker_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MarkerPose>) istream)
  "Deserializes a message object of type '<MarkerPose>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'marker_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'marker_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MarkerPose>)))
  "Returns string type for a message object of type '<MarkerPose>"
  "jsk_interactive_marker/MarkerPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MarkerPose)))
  "Returns string type for a message object of type 'MarkerPose"
  "jsk_interactive_marker/MarkerPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MarkerPose>)))
  "Returns md5sum for a message object of type '<MarkerPose>"
  "cbb82805055f8f87cec211c5459c476c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MarkerPose)))
  "Returns md5sum for a message object of type 'MarkerPose"
  "cbb82805055f8f87cec211c5459c476c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MarkerPose>)))
  "Returns full string definition for message of type '<MarkerPose>"
  (cl:format cl:nil "uint8 GENERAL=0~%uint8 HEAD_MARKER=1~%uint8 RHAND_MARKER=2~%uint8 LHAND_MARKER=3~%uint8 RLEG_MARKER=4~%uint8 LLEG_MARKER=5~%uint8 BASE_MARKER=6~%uint8 RFINGER_MARKER=7~%uint8 LFINGER_MARKER=8~%uint8 SPHERE_MARKER=9~%~%int8 type~%geometry_msgs/PoseStamped pose~%string marker_name~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MarkerPose)))
  "Returns full string definition for message of type 'MarkerPose"
  (cl:format cl:nil "uint8 GENERAL=0~%uint8 HEAD_MARKER=1~%uint8 RHAND_MARKER=2~%uint8 LHAND_MARKER=3~%uint8 RLEG_MARKER=4~%uint8 LLEG_MARKER=5~%uint8 BASE_MARKER=6~%uint8 RFINGER_MARKER=7~%uint8 LFINGER_MARKER=8~%uint8 SPHERE_MARKER=9~%~%int8 type~%geometry_msgs/PoseStamped pose~%string marker_name~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MarkerPose>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'marker_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MarkerPose>))
  "Converts a ROS message object to a list"
  (cl:list 'MarkerPose
    (cl:cons ':type (type msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':marker_name (marker_name msg))
))
