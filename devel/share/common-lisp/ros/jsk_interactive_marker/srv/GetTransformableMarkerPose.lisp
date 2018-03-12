; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude GetTransformableMarkerPose-request.msg.html

(cl:defclass <GetTransformableMarkerPose-request> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetTransformableMarkerPose-request (<GetTransformableMarkerPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformableMarkerPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformableMarkerPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetTransformableMarkerPose-request> is deprecated: use jsk_interactive_marker-srv:GetTransformableMarkerPose-request instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <GetTransformableMarkerPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:target_name-val is deprecated.  Use jsk_interactive_marker-srv:target_name instead.")
  (target_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformableMarkerPose-request>) ostream)
  "Serializes a message object of type '<GetTransformableMarkerPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformableMarkerPose-request>) istream)
  "Deserializes a message object of type '<GetTransformableMarkerPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformableMarkerPose-request>)))
  "Returns string type for a service object of type '<GetTransformableMarkerPose-request>"
  "jsk_interactive_marker/GetTransformableMarkerPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerPose-request)))
  "Returns string type for a service object of type 'GetTransformableMarkerPose-request"
  "jsk_interactive_marker/GetTransformableMarkerPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformableMarkerPose-request>)))
  "Returns md5sum for a message object of type '<GetTransformableMarkerPose-request>"
  "3af82e362d6e5253403562cfd8c3c812")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformableMarkerPose-request)))
  "Returns md5sum for a message object of type 'GetTransformableMarkerPose-request"
  "3af82e362d6e5253403562cfd8c3c812")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformableMarkerPose-request>)))
  "Returns full string definition for message of type '<GetTransformableMarkerPose-request>"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformableMarkerPose-request)))
  "Returns full string definition for message of type 'GetTransformableMarkerPose-request"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformableMarkerPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformableMarkerPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformableMarkerPose-request
    (cl:cons ':target_name (target_name msg))
))
;//! \htmlinclude GetTransformableMarkerPose-response.msg.html

(cl:defclass <GetTransformableMarkerPose-response> (roslisp-msg-protocol:ros-message)
  ((pose_stamped
    :reader pose_stamped
    :initarg :pose_stamped
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GetTransformableMarkerPose-response (<GetTransformableMarkerPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformableMarkerPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformableMarkerPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetTransformableMarkerPose-response> is deprecated: use jsk_interactive_marker-srv:GetTransformableMarkerPose-response instead.")))

(cl:ensure-generic-function 'pose_stamped-val :lambda-list '(m))
(cl:defmethod pose_stamped-val ((m <GetTransformableMarkerPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:pose_stamped-val is deprecated.  Use jsk_interactive_marker-srv:pose_stamped instead.")
  (pose_stamped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformableMarkerPose-response>) ostream)
  "Serializes a message object of type '<GetTransformableMarkerPose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_stamped) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformableMarkerPose-response>) istream)
  "Deserializes a message object of type '<GetTransformableMarkerPose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_stamped) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformableMarkerPose-response>)))
  "Returns string type for a service object of type '<GetTransformableMarkerPose-response>"
  "jsk_interactive_marker/GetTransformableMarkerPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerPose-response)))
  "Returns string type for a service object of type 'GetTransformableMarkerPose-response"
  "jsk_interactive_marker/GetTransformableMarkerPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformableMarkerPose-response>)))
  "Returns md5sum for a message object of type '<GetTransformableMarkerPose-response>"
  "3af82e362d6e5253403562cfd8c3c812")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformableMarkerPose-response)))
  "Returns md5sum for a message object of type 'GetTransformableMarkerPose-response"
  "3af82e362d6e5253403562cfd8c3c812")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformableMarkerPose-response>)))
  "Returns full string definition for message of type '<GetTransformableMarkerPose-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose_stamped~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformableMarkerPose-response)))
  "Returns full string definition for message of type 'GetTransformableMarkerPose-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose_stamped~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformableMarkerPose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_stamped))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformableMarkerPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformableMarkerPose-response
    (cl:cons ':pose_stamped (pose_stamped msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTransformableMarkerPose)))
  'GetTransformableMarkerPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTransformableMarkerPose)))
  'GetTransformableMarkerPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerPose)))
  "Returns string type for a service object of type '<GetTransformableMarkerPose>"
  "jsk_interactive_marker/GetTransformableMarkerPose")