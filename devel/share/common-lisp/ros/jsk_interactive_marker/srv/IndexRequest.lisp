; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude IndexRequest-request.msg.html

(cl:defclass <IndexRequest-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type jsk_recognition_msgs-msg:Int32Stamped
    :initform (cl:make-instance 'jsk_recognition_msgs-msg:Int32Stamped)))
)

(cl:defclass IndexRequest-request (<IndexRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IndexRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IndexRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<IndexRequest-request> is deprecated: use jsk_interactive_marker-srv:IndexRequest-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <IndexRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:index-val is deprecated.  Use jsk_interactive_marker-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IndexRequest-request>) ostream)
  "Serializes a message object of type '<IndexRequest-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'index) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IndexRequest-request>) istream)
  "Deserializes a message object of type '<IndexRequest-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'index) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IndexRequest-request>)))
  "Returns string type for a service object of type '<IndexRequest-request>"
  "jsk_interactive_marker/IndexRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IndexRequest-request)))
  "Returns string type for a service object of type 'IndexRequest-request"
  "jsk_interactive_marker/IndexRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IndexRequest-request>)))
  "Returns md5sum for a message object of type '<IndexRequest-request>"
  "e7767d85a4611e638acb5e4f67adbc5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IndexRequest-request)))
  "Returns md5sum for a message object of type 'IndexRequest-request"
  "e7767d85a4611e638acb5e4f67adbc5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IndexRequest-request>)))
  "Returns full string definition for message of type '<IndexRequest-request>"
  (cl:format cl:nil "jsk_recognition_msgs/Int32Stamped index~%~%================================================================================~%MSG: jsk_recognition_msgs/Int32Stamped~%Header header~%int32 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IndexRequest-request)))
  "Returns full string definition for message of type 'IndexRequest-request"
  (cl:format cl:nil "jsk_recognition_msgs/Int32Stamped index~%~%================================================================================~%MSG: jsk_recognition_msgs/Int32Stamped~%Header header~%int32 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IndexRequest-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'index))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IndexRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IndexRequest-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude IndexRequest-response.msg.html

(cl:defclass <IndexRequest-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass IndexRequest-response (<IndexRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IndexRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IndexRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<IndexRequest-response> is deprecated: use jsk_interactive_marker-srv:IndexRequest-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IndexRequest-response>) ostream)
  "Serializes a message object of type '<IndexRequest-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IndexRequest-response>) istream)
  "Deserializes a message object of type '<IndexRequest-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IndexRequest-response>)))
  "Returns string type for a service object of type '<IndexRequest-response>"
  "jsk_interactive_marker/IndexRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IndexRequest-response)))
  "Returns string type for a service object of type 'IndexRequest-response"
  "jsk_interactive_marker/IndexRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IndexRequest-response>)))
  "Returns md5sum for a message object of type '<IndexRequest-response>"
  "e7767d85a4611e638acb5e4f67adbc5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IndexRequest-response)))
  "Returns md5sum for a message object of type 'IndexRequest-response"
  "e7767d85a4611e638acb5e4f67adbc5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IndexRequest-response>)))
  "Returns full string definition for message of type '<IndexRequest-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IndexRequest-response)))
  "Returns full string definition for message of type 'IndexRequest-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IndexRequest-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IndexRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IndexRequest-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IndexRequest)))
  'IndexRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IndexRequest)))
  'IndexRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IndexRequest)))
  "Returns string type for a service object of type '<IndexRequest>"
  "jsk_interactive_marker/IndexRequest")