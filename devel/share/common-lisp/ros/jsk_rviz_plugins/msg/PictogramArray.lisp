; Auto-generated. Do not edit!


(cl:in-package jsk_rviz_plugins-msg)


;//! \htmlinclude PictogramArray.msg.html

(cl:defclass <PictogramArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pictograms
    :reader pictograms
    :initarg :pictograms
    :type (cl:vector jsk_rviz_plugins-msg:Pictogram)
   :initform (cl:make-array 0 :element-type 'jsk_rviz_plugins-msg:Pictogram :initial-element (cl:make-instance 'jsk_rviz_plugins-msg:Pictogram))))
)

(cl:defclass PictogramArray (<PictogramArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PictogramArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PictogramArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-msg:<PictogramArray> is deprecated: use jsk_rviz_plugins-msg:PictogramArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PictogramArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:header-val is deprecated.  Use jsk_rviz_plugins-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pictograms-val :lambda-list '(m))
(cl:defmethod pictograms-val ((m <PictogramArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:pictograms-val is deprecated.  Use jsk_rviz_plugins-msg:pictograms instead.")
  (pictograms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PictogramArray>) ostream)
  "Serializes a message object of type '<PictogramArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pictograms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pictograms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PictogramArray>) istream)
  "Deserializes a message object of type '<PictogramArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pictograms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pictograms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'jsk_rviz_plugins-msg:Pictogram))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PictogramArray>)))
  "Returns string type for a message object of type '<PictogramArray>"
  "jsk_rviz_plugins/PictogramArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PictogramArray)))
  "Returns string type for a message object of type 'PictogramArray"
  "jsk_rviz_plugins/PictogramArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PictogramArray>)))
  "Returns md5sum for a message object of type '<PictogramArray>"
  "bfdafbfcdf121aed91dae673b47ae3fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PictogramArray)))
  "Returns md5sum for a message object of type 'PictogramArray"
  "bfdafbfcdf121aed91dae673b47ae3fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PictogramArray>)))
  "Returns full string definition for message of type '<PictogramArray>"
  (cl:format cl:nil "Header header~%Pictogram[] pictograms~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: jsk_rviz_plugins/Pictogram~%Header header~%geometry_msgs/Pose pose~%uint8 ADD=0~%uint8 DELETE=1~%uint8 ROTATE_Z=2~%uint8 ROTATE_Y=3~%uint8 ROTATE_X=4~%uint8 JUMP=5~%uint8 JUMP_ONCE=6~%uint8 action~%~%uint8 PICTOGRAM_MODE=0 ~%uint8 STRING_MODE=1~%~%uint8 mode~%string character~%float64 size~%float64 ttl~%float64 speed~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PictogramArray)))
  "Returns full string definition for message of type 'PictogramArray"
  (cl:format cl:nil "Header header~%Pictogram[] pictograms~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: jsk_rviz_plugins/Pictogram~%Header header~%geometry_msgs/Pose pose~%uint8 ADD=0~%uint8 DELETE=1~%uint8 ROTATE_Z=2~%uint8 ROTATE_Y=3~%uint8 ROTATE_X=4~%uint8 JUMP=5~%uint8 JUMP_ONCE=6~%uint8 action~%~%uint8 PICTOGRAM_MODE=0 ~%uint8 STRING_MODE=1~%~%uint8 mode~%string character~%float64 size~%float64 ttl~%float64 speed~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PictogramArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pictograms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PictogramArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PictogramArray
    (cl:cons ':header (header msg))
    (cl:cons ':pictograms (pictograms msg))
))
