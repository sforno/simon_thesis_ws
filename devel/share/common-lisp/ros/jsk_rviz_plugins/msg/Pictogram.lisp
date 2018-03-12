; Auto-generated. Do not edit!


(cl:in-package jsk_rviz_plugins-msg)


;//! \htmlinclude Pictogram.msg.html

(cl:defclass <Pictogram> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (character
    :reader character
    :initarg :character
    :type cl:string
    :initform "")
   (size
    :reader size
    :initarg :size
    :type cl:float
    :initform 0.0)
   (ttl
    :reader ttl
    :initarg :ttl
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass Pictogram (<Pictogram>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pictogram>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pictogram)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-msg:<Pictogram> is deprecated: use jsk_rviz_plugins-msg:Pictogram instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Pictogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:header-val is deprecated.  Use jsk_rviz_plugins-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Pictogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:pose-val is deprecated.  Use jsk_rviz_plugins-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <Pictogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:action-val is deprecated.  Use jsk_rviz_plugins-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Pictogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:mode-val is deprecated.  Use jsk_rviz_plugins-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'character-val :lambda-list '(m))
(cl:defmethod character-val ((m <Pictogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:character-val is deprecated.  Use jsk_rviz_plugins-msg:character instead.")
  (character m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <Pictogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:size-val is deprecated.  Use jsk_rviz_plugins-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'ttl-val :lambda-list '(m))
(cl:defmethod ttl-val ((m <Pictogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:ttl-val is deprecated.  Use jsk_rviz_plugins-msg:ttl instead.")
  (ttl m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Pictogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:speed-val is deprecated.  Use jsk_rviz_plugins-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <Pictogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:color-val is deprecated.  Use jsk_rviz_plugins-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Pictogram>)))
    "Constants for message type '<Pictogram>"
  '((:ADD . 0)
    (:DELETE . 1)
    (:ROTATE_Z . 2)
    (:ROTATE_Y . 3)
    (:ROTATE_X . 4)
    (:JUMP . 5)
    (:JUMP_ONCE . 6)
    (:PICTOGRAM_MODE . 0)
    (:STRING_MODE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Pictogram)))
    "Constants for message type 'Pictogram"
  '((:ADD . 0)
    (:DELETE . 1)
    (:ROTATE_Z . 2)
    (:ROTATE_Y . 3)
    (:ROTATE_X . 4)
    (:JUMP . 5)
    (:JUMP_ONCE . 6)
    (:PICTOGRAM_MODE . 0)
    (:STRING_MODE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pictogram>) ostream)
  "Serializes a message object of type '<Pictogram>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'character))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'character))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ttl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pictogram>) istream)
  "Deserializes a message object of type '<Pictogram>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'character) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'character) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ttl) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pictogram>)))
  "Returns string type for a message object of type '<Pictogram>"
  "jsk_rviz_plugins/Pictogram")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pictogram)))
  "Returns string type for a message object of type 'Pictogram"
  "jsk_rviz_plugins/Pictogram")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pictogram>)))
  "Returns md5sum for a message object of type '<Pictogram>"
  "29667e5652a8cfdc9c87d2ed97aa7bbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pictogram)))
  "Returns md5sum for a message object of type 'Pictogram"
  "29667e5652a8cfdc9c87d2ed97aa7bbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pictogram>)))
  "Returns full string definition for message of type '<Pictogram>"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose pose~%uint8 ADD=0~%uint8 DELETE=1~%uint8 ROTATE_Z=2~%uint8 ROTATE_Y=3~%uint8 ROTATE_X=4~%uint8 JUMP=5~%uint8 JUMP_ONCE=6~%uint8 action~%~%uint8 PICTOGRAM_MODE=0 ~%uint8 STRING_MODE=1~%~%uint8 mode~%string character~%float64 size~%float64 ttl~%float64 speed~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pictogram)))
  "Returns full string definition for message of type 'Pictogram"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose pose~%uint8 ADD=0~%uint8 DELETE=1~%uint8 ROTATE_Z=2~%uint8 ROTATE_Y=3~%uint8 ROTATE_X=4~%uint8 JUMP=5~%uint8 JUMP_ONCE=6~%uint8 action~%~%uint8 PICTOGRAM_MODE=0 ~%uint8 STRING_MODE=1~%~%uint8 mode~%string character~%float64 size~%float64 ttl~%float64 speed~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pictogram>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
     1
     4 (cl:length (cl:slot-value msg 'character))
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pictogram>))
  "Converts a ROS message object to a list"
  (cl:list 'Pictogram
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':action (action msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':character (character msg))
    (cl:cons ':size (size msg))
    (cl:cons ':ttl (ttl msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':color (color msg))
))
