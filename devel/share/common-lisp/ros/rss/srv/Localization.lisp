; Auto-generated. Do not edit!


(cl:in-package rss-srv)


;//! \htmlinclude Localization-request.msg.html

(cl:defclass <Localization-request> (roslisp-msg-protocol:ros-message)
  ((rss
    :reader rss
    :initarg :rss
    :type (cl:vector rss-msg:RssData)
   :initform (cl:make-array 0 :element-type 'rss-msg:RssData :initial-element (cl:make-instance 'rss-msg:RssData)))
   (nsamples
    :reader nsamples
    :initarg :nsamples
    :type cl:integer
    :initform 0)
   (pose_array
    :reader pose_array
    :initarg :pose_array
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray)))
)

(cl:defclass Localization-request (<Localization-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Localization-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Localization-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rss-srv:<Localization-request> is deprecated: use rss-srv:Localization-request instead.")))

(cl:ensure-generic-function 'rss-val :lambda-list '(m))
(cl:defmethod rss-val ((m <Localization-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-srv:rss-val is deprecated.  Use rss-srv:rss instead.")
  (rss m))

(cl:ensure-generic-function 'nsamples-val :lambda-list '(m))
(cl:defmethod nsamples-val ((m <Localization-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-srv:nsamples-val is deprecated.  Use rss-srv:nsamples instead.")
  (nsamples m))

(cl:ensure-generic-function 'pose_array-val :lambda-list '(m))
(cl:defmethod pose_array-val ((m <Localization-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-srv:pose_array-val is deprecated.  Use rss-srv:pose_array instead.")
  (pose_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Localization-request>) ostream)
  "Serializes a message object of type '<Localization-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rss))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rss))
  (cl:let* ((signed (cl:slot-value msg 'nsamples)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_array) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Localization-request>) istream)
  "Deserializes a message object of type '<Localization-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rss) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rss)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rss-msg:RssData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nsamples) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_array) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Localization-request>)))
  "Returns string type for a service object of type '<Localization-request>"
  "rss/LocalizationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Localization-request)))
  "Returns string type for a service object of type 'Localization-request"
  "rss/LocalizationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Localization-request>)))
  "Returns md5sum for a message object of type '<Localization-request>"
  "657eb31c75cbeea4823f2ec9c2b4e987")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Localization-request)))
  "Returns md5sum for a message object of type 'Localization-request"
  "657eb31c75cbeea4823f2ec9c2b4e987")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Localization-request>)))
  "Returns full string definition for message of type '<Localization-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%RssData[] rss~%int64 nsamples~%geometry_msgs/PoseArray pose_array~%~%~%================================================================================~%MSG: rss/RssData~%uint64      time_start_ns~%uint32      duration_ms~%string[]    mac_address~%int16[]     freq~%RssDatum[]  data~%~%================================================================================~%MSG: rss/RssDatum~%int8[]  rss~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Localization-request)))
  "Returns full string definition for message of type 'Localization-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%RssData[] rss~%int64 nsamples~%geometry_msgs/PoseArray pose_array~%~%~%================================================================================~%MSG: rss/RssData~%uint64      time_start_ns~%uint32      duration_ms~%string[]    mac_address~%int16[]     freq~%RssDatum[]  data~%~%================================================================================~%MSG: rss/RssDatum~%int8[]  rss~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Localization-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rss) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_array))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Localization-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Localization-request
    (cl:cons ':rss (rss msg))
    (cl:cons ':nsamples (nsamples msg))
    (cl:cons ':pose_array (pose_array msg))
))
;//! \htmlinclude Localization-response.msg.html

(cl:defclass <Localization-response> (roslisp-msg-protocol:ros-message)
  ((pose_array
    :reader pose_array
    :initarg :pose_array
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (weights
    :reader weights
    :initarg :weights
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (prob_mesh
    :reader prob_mesh
    :initarg :prob_mesh
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Localization-response (<Localization-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Localization-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Localization-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rss-srv:<Localization-response> is deprecated: use rss-srv:Localization-response instead.")))

(cl:ensure-generic-function 'pose_array-val :lambda-list '(m))
(cl:defmethod pose_array-val ((m <Localization-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-srv:pose_array-val is deprecated.  Use rss-srv:pose_array instead.")
  (pose_array m))

(cl:ensure-generic-function 'weights-val :lambda-list '(m))
(cl:defmethod weights-val ((m <Localization-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-srv:weights-val is deprecated.  Use rss-srv:weights instead.")
  (weights m))

(cl:ensure-generic-function 'prob_mesh-val :lambda-list '(m))
(cl:defmethod prob_mesh-val ((m <Localization-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-srv:prob_mesh-val is deprecated.  Use rss-srv:prob_mesh instead.")
  (prob_mesh m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Localization-response>) ostream)
  "Serializes a message object of type '<Localization-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_array) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'weights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'weights))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'prob_mesh))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'prob_mesh))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Localization-response>) istream)
  "Deserializes a message object of type '<Localization-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_array) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'weights) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'weights)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'prob_mesh) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'prob_mesh)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Localization-response>)))
  "Returns string type for a service object of type '<Localization-response>"
  "rss/LocalizationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Localization-response)))
  "Returns string type for a service object of type 'Localization-response"
  "rss/LocalizationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Localization-response>)))
  "Returns md5sum for a message object of type '<Localization-response>"
  "657eb31c75cbeea4823f2ec9c2b4e987")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Localization-response)))
  "Returns md5sum for a message object of type 'Localization-response"
  "657eb31c75cbeea4823f2ec9c2b4e987")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Localization-response>)))
  "Returns full string definition for message of type '<Localization-response>"
  (cl:format cl:nil "~%geometry_msgs/PoseArray pose_array~%float64[] weights~%float64[] prob_mesh~%~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Localization-response)))
  "Returns full string definition for message of type 'Localization-response"
  (cl:format cl:nil "~%geometry_msgs/PoseArray pose_array~%float64[] weights~%float64[] prob_mesh~%~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Localization-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_array))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'weights) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'prob_mesh) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Localization-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Localization-response
    (cl:cons ':pose_array (pose_array msg))
    (cl:cons ':weights (weights msg))
    (cl:cons ':prob_mesh (prob_mesh msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Localization)))
  'Localization-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Localization)))
  'Localization-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Localization)))
  "Returns string type for a service object of type '<Localization>"
  "rss/Localization")