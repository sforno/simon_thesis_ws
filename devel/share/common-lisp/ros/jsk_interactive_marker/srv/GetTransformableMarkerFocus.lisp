; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude GetTransformableMarkerFocus-request.msg.html

(cl:defclass <GetTransformableMarkerFocus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTransformableMarkerFocus-request (<GetTransformableMarkerFocus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformableMarkerFocus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformableMarkerFocus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetTransformableMarkerFocus-request> is deprecated: use jsk_interactive_marker-srv:GetTransformableMarkerFocus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformableMarkerFocus-request>) ostream)
  "Serializes a message object of type '<GetTransformableMarkerFocus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformableMarkerFocus-request>) istream)
  "Deserializes a message object of type '<GetTransformableMarkerFocus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformableMarkerFocus-request>)))
  "Returns string type for a service object of type '<GetTransformableMarkerFocus-request>"
  "jsk_interactive_marker/GetTransformableMarkerFocusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerFocus-request)))
  "Returns string type for a service object of type 'GetTransformableMarkerFocus-request"
  "jsk_interactive_marker/GetTransformableMarkerFocusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformableMarkerFocus-request>)))
  "Returns md5sum for a message object of type '<GetTransformableMarkerFocus-request>"
  "2008933b3c7227647cbe00c74682331a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformableMarkerFocus-request)))
  "Returns md5sum for a message object of type 'GetTransformableMarkerFocus-request"
  "2008933b3c7227647cbe00c74682331a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformableMarkerFocus-request>)))
  "Returns full string definition for message of type '<GetTransformableMarkerFocus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformableMarkerFocus-request)))
  "Returns full string definition for message of type 'GetTransformableMarkerFocus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformableMarkerFocus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformableMarkerFocus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformableMarkerFocus-request
))
;//! \htmlinclude GetTransformableMarkerFocus-response.msg.html

(cl:defclass <GetTransformableMarkerFocus-response> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetTransformableMarkerFocus-response (<GetTransformableMarkerFocus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformableMarkerFocus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformableMarkerFocus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetTransformableMarkerFocus-response> is deprecated: use jsk_interactive_marker-srv:GetTransformableMarkerFocus-response instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <GetTransformableMarkerFocus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:target_name-val is deprecated.  Use jsk_interactive_marker-srv:target_name instead.")
  (target_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformableMarkerFocus-response>) ostream)
  "Serializes a message object of type '<GetTransformableMarkerFocus-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformableMarkerFocus-response>) istream)
  "Deserializes a message object of type '<GetTransformableMarkerFocus-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformableMarkerFocus-response>)))
  "Returns string type for a service object of type '<GetTransformableMarkerFocus-response>"
  "jsk_interactive_marker/GetTransformableMarkerFocusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerFocus-response)))
  "Returns string type for a service object of type 'GetTransformableMarkerFocus-response"
  "jsk_interactive_marker/GetTransformableMarkerFocusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformableMarkerFocus-response>)))
  "Returns md5sum for a message object of type '<GetTransformableMarkerFocus-response>"
  "2008933b3c7227647cbe00c74682331a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformableMarkerFocus-response)))
  "Returns md5sum for a message object of type 'GetTransformableMarkerFocus-response"
  "2008933b3c7227647cbe00c74682331a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformableMarkerFocus-response>)))
  "Returns full string definition for message of type '<GetTransformableMarkerFocus-response>"
  (cl:format cl:nil "string target_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformableMarkerFocus-response)))
  "Returns full string definition for message of type 'GetTransformableMarkerFocus-response"
  (cl:format cl:nil "string target_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformableMarkerFocus-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformableMarkerFocus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformableMarkerFocus-response
    (cl:cons ':target_name (target_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTransformableMarkerFocus)))
  'GetTransformableMarkerFocus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTransformableMarkerFocus)))
  'GetTransformableMarkerFocus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerFocus)))
  "Returns string type for a service object of type '<GetTransformableMarkerFocus>"
  "jsk_interactive_marker/GetTransformableMarkerFocus")