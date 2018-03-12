; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude RemoveParentMarker-request.msg.html

(cl:defclass <RemoveParentMarker-request> (roslisp-msg-protocol:ros-message)
  ((child_marker_name
    :reader child_marker_name
    :initarg :child_marker_name
    :type cl:string
    :initform ""))
)

(cl:defclass RemoveParentMarker-request (<RemoveParentMarker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveParentMarker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveParentMarker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<RemoveParentMarker-request> is deprecated: use jsk_interactive_marker-srv:RemoveParentMarker-request instead.")))

(cl:ensure-generic-function 'child_marker_name-val :lambda-list '(m))
(cl:defmethod child_marker_name-val ((m <RemoveParentMarker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:child_marker_name-val is deprecated.  Use jsk_interactive_marker-srv:child_marker_name instead.")
  (child_marker_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveParentMarker-request>) ostream)
  "Serializes a message object of type '<RemoveParentMarker-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'child_marker_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'child_marker_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveParentMarker-request>) istream)
  "Deserializes a message object of type '<RemoveParentMarker-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'child_marker_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'child_marker_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveParentMarker-request>)))
  "Returns string type for a service object of type '<RemoveParentMarker-request>"
  "jsk_interactive_marker/RemoveParentMarkerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveParentMarker-request)))
  "Returns string type for a service object of type 'RemoveParentMarker-request"
  "jsk_interactive_marker/RemoveParentMarkerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveParentMarker-request>)))
  "Returns md5sum for a message object of type '<RemoveParentMarker-request>"
  "97181b161a4bd485fbd404baffdcfbf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveParentMarker-request)))
  "Returns md5sum for a message object of type 'RemoveParentMarker-request"
  "97181b161a4bd485fbd404baffdcfbf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveParentMarker-request>)))
  "Returns full string definition for message of type '<RemoveParentMarker-request>"
  (cl:format cl:nil "string child_marker_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveParentMarker-request)))
  "Returns full string definition for message of type 'RemoveParentMarker-request"
  (cl:format cl:nil "string child_marker_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveParentMarker-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'child_marker_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveParentMarker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveParentMarker-request
    (cl:cons ':child_marker_name (child_marker_name msg))
))
;//! \htmlinclude RemoveParentMarker-response.msg.html

(cl:defclass <RemoveParentMarker-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RemoveParentMarker-response (<RemoveParentMarker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveParentMarker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveParentMarker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<RemoveParentMarker-response> is deprecated: use jsk_interactive_marker-srv:RemoveParentMarker-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveParentMarker-response>) ostream)
  "Serializes a message object of type '<RemoveParentMarker-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveParentMarker-response>) istream)
  "Deserializes a message object of type '<RemoveParentMarker-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveParentMarker-response>)))
  "Returns string type for a service object of type '<RemoveParentMarker-response>"
  "jsk_interactive_marker/RemoveParentMarkerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveParentMarker-response)))
  "Returns string type for a service object of type 'RemoveParentMarker-response"
  "jsk_interactive_marker/RemoveParentMarkerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveParentMarker-response>)))
  "Returns md5sum for a message object of type '<RemoveParentMarker-response>"
  "97181b161a4bd485fbd404baffdcfbf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveParentMarker-response)))
  "Returns md5sum for a message object of type 'RemoveParentMarker-response"
  "97181b161a4bd485fbd404baffdcfbf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveParentMarker-response>)))
  "Returns full string definition for message of type '<RemoveParentMarker-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveParentMarker-response)))
  "Returns full string definition for message of type 'RemoveParentMarker-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveParentMarker-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveParentMarker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveParentMarker-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveParentMarker)))
  'RemoveParentMarker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveParentMarker)))
  'RemoveParentMarker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveParentMarker)))
  "Returns string type for a service object of type '<RemoveParentMarker>"
  "jsk_interactive_marker/RemoveParentMarker")