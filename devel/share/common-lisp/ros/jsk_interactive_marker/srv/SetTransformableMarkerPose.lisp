; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude SetTransformableMarkerPose-request.msg.html

(cl:defclass <SetTransformableMarkerPose-request> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform "")
   (pose_stamped
    :reader pose_stamped
    :initarg :pose_stamped
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass SetTransformableMarkerPose-request (<SetTransformableMarkerPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTransformableMarkerPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTransformableMarkerPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetTransformableMarkerPose-request> is deprecated: use jsk_interactive_marker-srv:SetTransformableMarkerPose-request instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <SetTransformableMarkerPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:target_name-val is deprecated.  Use jsk_interactive_marker-srv:target_name instead.")
  (target_name m))

(cl:ensure-generic-function 'pose_stamped-val :lambda-list '(m))
(cl:defmethod pose_stamped-val ((m <SetTransformableMarkerPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:pose_stamped-val is deprecated.  Use jsk_interactive_marker-srv:pose_stamped instead.")
  (pose_stamped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTransformableMarkerPose-request>) ostream)
  "Serializes a message object of type '<SetTransformableMarkerPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_stamped) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTransformableMarkerPose-request>) istream)
  "Deserializes a message object of type '<SetTransformableMarkerPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_stamped) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTransformableMarkerPose-request>)))
  "Returns string type for a service object of type '<SetTransformableMarkerPose-request>"
  "jsk_interactive_marker/SetTransformableMarkerPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformableMarkerPose-request)))
  "Returns string type for a service object of type 'SetTransformableMarkerPose-request"
  "jsk_interactive_marker/SetTransformableMarkerPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTransformableMarkerPose-request>)))
  "Returns md5sum for a message object of type '<SetTransformableMarkerPose-request>"
  "e19607b29b4528e87feff290fe261191")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTransformableMarkerPose-request)))
  "Returns md5sum for a message object of type 'SetTransformableMarkerPose-request"
  "e19607b29b4528e87feff290fe261191")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTransformableMarkerPose-request>)))
  "Returns full string definition for message of type '<SetTransformableMarkerPose-request>"
  (cl:format cl:nil "string target_name~%geometry_msgs/PoseStamped pose_stamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTransformableMarkerPose-request)))
  "Returns full string definition for message of type 'SetTransformableMarkerPose-request"
  (cl:format cl:nil "string target_name~%geometry_msgs/PoseStamped pose_stamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTransformableMarkerPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_stamped))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTransformableMarkerPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTransformableMarkerPose-request
    (cl:cons ':target_name (target_name msg))
    (cl:cons ':pose_stamped (pose_stamped msg))
))
;//! \htmlinclude SetTransformableMarkerPose-response.msg.html

(cl:defclass <SetTransformableMarkerPose-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetTransformableMarkerPose-response (<SetTransformableMarkerPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTransformableMarkerPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTransformableMarkerPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetTransformableMarkerPose-response> is deprecated: use jsk_interactive_marker-srv:SetTransformableMarkerPose-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTransformableMarkerPose-response>) ostream)
  "Serializes a message object of type '<SetTransformableMarkerPose-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTransformableMarkerPose-response>) istream)
  "Deserializes a message object of type '<SetTransformableMarkerPose-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTransformableMarkerPose-response>)))
  "Returns string type for a service object of type '<SetTransformableMarkerPose-response>"
  "jsk_interactive_marker/SetTransformableMarkerPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformableMarkerPose-response)))
  "Returns string type for a service object of type 'SetTransformableMarkerPose-response"
  "jsk_interactive_marker/SetTransformableMarkerPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTransformableMarkerPose-response>)))
  "Returns md5sum for a message object of type '<SetTransformableMarkerPose-response>"
  "e19607b29b4528e87feff290fe261191")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTransformableMarkerPose-response)))
  "Returns md5sum for a message object of type 'SetTransformableMarkerPose-response"
  "e19607b29b4528e87feff290fe261191")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTransformableMarkerPose-response>)))
  "Returns full string definition for message of type '<SetTransformableMarkerPose-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTransformableMarkerPose-response)))
  "Returns full string definition for message of type 'SetTransformableMarkerPose-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTransformableMarkerPose-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTransformableMarkerPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTransformableMarkerPose-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTransformableMarkerPose)))
  'SetTransformableMarkerPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTransformableMarkerPose)))
  'SetTransformableMarkerPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformableMarkerPose)))
  "Returns string type for a service object of type '<SetTransformableMarkerPose>"
  "jsk_interactive_marker/SetTransformableMarkerPose")