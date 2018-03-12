; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-msg)


;//! \htmlinclude MoveObject.msg.html

(cl:defclass <MoveObject> (roslisp-msg-protocol:ros-message)
  ((origin
    :reader origin
    :initarg :origin
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (graspPose
    :reader graspPose
    :initarg :graspPose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass MoveObject (<MoveObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-msg:<MoveObject> is deprecated: use jsk_interactive_marker-msg:MoveObject instead.")))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <MoveObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:origin-val is deprecated.  Use jsk_interactive_marker-msg:origin instead.")
  (origin m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MoveObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:goal-val is deprecated.  Use jsk_interactive_marker-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'graspPose-val :lambda-list '(m))
(cl:defmethod graspPose-val ((m <MoveObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-msg:graspPose-val is deprecated.  Use jsk_interactive_marker-msg:graspPose instead.")
  (graspPose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveObject>) ostream)
  "Serializes a message object of type '<MoveObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'graspPose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveObject>) istream)
  "Deserializes a message object of type '<MoveObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'graspPose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveObject>)))
  "Returns string type for a message object of type '<MoveObject>"
  "jsk_interactive_marker/MoveObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveObject)))
  "Returns string type for a message object of type 'MoveObject"
  "jsk_interactive_marker/MoveObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveObject>)))
  "Returns md5sum for a message object of type '<MoveObject>"
  "398be7a942bfa9cfc119a5f96e3dc37a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveObject)))
  "Returns md5sum for a message object of type 'MoveObject"
  "398be7a942bfa9cfc119a5f96e3dc37a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveObject>)))
  "Returns full string definition for message of type '<MoveObject>"
  (cl:format cl:nil "geometry_msgs/PoseStamped origin~%geometry_msgs/PoseStamped goal~%geometry_msgs/Pose graspPose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveObject)))
  "Returns full string definition for message of type 'MoveObject"
  (cl:format cl:nil "geometry_msgs/PoseStamped origin~%geometry_msgs/PoseStamped goal~%geometry_msgs/Pose graspPose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'graspPose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveObject>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveObject
    (cl:cons ':origin (origin msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':graspPose (graspPose msg))
))
