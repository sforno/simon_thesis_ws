; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude SnapFootPrint-request.msg.html

(cl:defclass <SnapFootPrint-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SnapFootPrint-request (<SnapFootPrint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SnapFootPrint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SnapFootPrint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SnapFootPrint-request> is deprecated: use jsk_interactive_marker-srv:SnapFootPrint-request instead.")))

(cl:ensure-generic-function 'input_pose-val :lambda-list '(m))
(cl:defmethod input_pose-val ((m <SnapFootPrint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:input_pose-val is deprecated.  Use jsk_interactive_marker-srv:input_pose instead.")
  (input_pose m))

(cl:ensure-generic-function 'lleg_pose-val :lambda-list '(m))
(cl:defmethod lleg_pose-val ((m <SnapFootPrint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:lleg_pose-val is deprecated.  Use jsk_interactive_marker-srv:lleg_pose instead.")
  (lleg_pose m))

(cl:ensure-generic-function 'rleg_pose-val :lambda-list '(m))
(cl:defmethod rleg_pose-val ((m <SnapFootPrint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:rleg_pose-val is deprecated.  Use jsk_interactive_marker-srv:rleg_pose instead.")
  (rleg_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SnapFootPrint-request>) ostream)
  "Serializes a message object of type '<SnapFootPrint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lleg_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rleg_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SnapFootPrint-request>) istream)
  "Deserializes a message object of type '<SnapFootPrint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lleg_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rleg_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SnapFootPrint-request>)))
  "Returns string type for a service object of type '<SnapFootPrint-request>"
  "jsk_interactive_marker/SnapFootPrintRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SnapFootPrint-request)))
  "Returns string type for a service object of type 'SnapFootPrint-request"
  "jsk_interactive_marker/SnapFootPrintRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SnapFootPrint-request>)))
  "Returns md5sum for a message object of type '<SnapFootPrint-request>"
  "e5091889756b723fad89a5ee8ac81396")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SnapFootPrint-request)))
  "Returns md5sum for a message object of type 'SnapFootPrint-request"
  "e5091889756b723fad89a5ee8ac81396")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SnapFootPrint-request>)))
  "Returns full string definition for message of type '<SnapFootPrint-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped input_pose~%geometry_msgs/Pose lleg_pose~%geometry_msgs/Pose rleg_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SnapFootPrint-request)))
  "Returns full string definition for message of type 'SnapFootPrint-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped input_pose~%geometry_msgs/Pose lleg_pose~%geometry_msgs/Pose rleg_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SnapFootPrint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lleg_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rleg_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SnapFootPrint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SnapFootPrint-request
    (cl:cons ':input_pose (input_pose msg))
    (cl:cons ':lleg_pose (lleg_pose msg))
    (cl:cons ':rleg_pose (rleg_pose msg))
))
;//! \htmlinclude SnapFootPrint-response.msg.html

(cl:defclass <SnapFootPrint-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (snapped_pose
    :reader snapped_pose
    :initarg :snapped_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass SnapFootPrint-response (<SnapFootPrint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SnapFootPrint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SnapFootPrint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SnapFootPrint-response> is deprecated: use jsk_interactive_marker-srv:SnapFootPrint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SnapFootPrint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:success-val is deprecated.  Use jsk_interactive_marker-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'snapped_pose-val :lambda-list '(m))
(cl:defmethod snapped_pose-val ((m <SnapFootPrint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:snapped_pose-val is deprecated.  Use jsk_interactive_marker-srv:snapped_pose instead.")
  (snapped_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SnapFootPrint-response>) ostream)
  "Serializes a message object of type '<SnapFootPrint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'snapped_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SnapFootPrint-response>) istream)
  "Deserializes a message object of type '<SnapFootPrint-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'snapped_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SnapFootPrint-response>)))
  "Returns string type for a service object of type '<SnapFootPrint-response>"
  "jsk_interactive_marker/SnapFootPrintResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SnapFootPrint-response)))
  "Returns string type for a service object of type 'SnapFootPrint-response"
  "jsk_interactive_marker/SnapFootPrintResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SnapFootPrint-response>)))
  "Returns md5sum for a message object of type '<SnapFootPrint-response>"
  "e5091889756b723fad89a5ee8ac81396")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SnapFootPrint-response)))
  "Returns md5sum for a message object of type 'SnapFootPrint-response"
  "e5091889756b723fad89a5ee8ac81396")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SnapFootPrint-response>)))
  "Returns full string definition for message of type '<SnapFootPrint-response>"
  (cl:format cl:nil "bool success~%geometry_msgs/PoseStamped snapped_pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SnapFootPrint-response)))
  "Returns full string definition for message of type 'SnapFootPrint-response"
  (cl:format cl:nil "bool success~%geometry_msgs/PoseStamped snapped_pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SnapFootPrint-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'snapped_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SnapFootPrint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SnapFootPrint-response
    (cl:cons ':success (success msg))
    (cl:cons ':snapped_pose (snapped_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SnapFootPrint)))
  'SnapFootPrint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SnapFootPrint)))
  'SnapFootPrint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SnapFootPrint)))
  "Returns string type for a service object of type '<SnapFootPrint>"
  "jsk_interactive_marker/SnapFootPrint")