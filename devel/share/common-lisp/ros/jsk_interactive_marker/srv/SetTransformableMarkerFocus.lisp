; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude SetTransformableMarkerFocus-request.msg.html

(cl:defclass <SetTransformableMarkerFocus-request> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform ""))
)

(cl:defclass SetTransformableMarkerFocus-request (<SetTransformableMarkerFocus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTransformableMarkerFocus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTransformableMarkerFocus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetTransformableMarkerFocus-request> is deprecated: use jsk_interactive_marker-srv:SetTransformableMarkerFocus-request instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <SetTransformableMarkerFocus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:target_name-val is deprecated.  Use jsk_interactive_marker-srv:target_name instead.")
  (target_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTransformableMarkerFocus-request>) ostream)
  "Serializes a message object of type '<SetTransformableMarkerFocus-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTransformableMarkerFocus-request>) istream)
  "Deserializes a message object of type '<SetTransformableMarkerFocus-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTransformableMarkerFocus-request>)))
  "Returns string type for a service object of type '<SetTransformableMarkerFocus-request>"
  "jsk_interactive_marker/SetTransformableMarkerFocusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformableMarkerFocus-request)))
  "Returns string type for a service object of type 'SetTransformableMarkerFocus-request"
  "jsk_interactive_marker/SetTransformableMarkerFocusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTransformableMarkerFocus-request>)))
  "Returns md5sum for a message object of type '<SetTransformableMarkerFocus-request>"
  "2008933b3c7227647cbe00c74682331a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTransformableMarkerFocus-request)))
  "Returns md5sum for a message object of type 'SetTransformableMarkerFocus-request"
  "2008933b3c7227647cbe00c74682331a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTransformableMarkerFocus-request>)))
  "Returns full string definition for message of type '<SetTransformableMarkerFocus-request>"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTransformableMarkerFocus-request)))
  "Returns full string definition for message of type 'SetTransformableMarkerFocus-request"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTransformableMarkerFocus-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTransformableMarkerFocus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTransformableMarkerFocus-request
    (cl:cons ':target_name (target_name msg))
))
;//! \htmlinclude SetTransformableMarkerFocus-response.msg.html

(cl:defclass <SetTransformableMarkerFocus-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetTransformableMarkerFocus-response (<SetTransformableMarkerFocus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTransformableMarkerFocus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTransformableMarkerFocus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetTransformableMarkerFocus-response> is deprecated: use jsk_interactive_marker-srv:SetTransformableMarkerFocus-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTransformableMarkerFocus-response>) ostream)
  "Serializes a message object of type '<SetTransformableMarkerFocus-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTransformableMarkerFocus-response>) istream)
  "Deserializes a message object of type '<SetTransformableMarkerFocus-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTransformableMarkerFocus-response>)))
  "Returns string type for a service object of type '<SetTransformableMarkerFocus-response>"
  "jsk_interactive_marker/SetTransformableMarkerFocusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformableMarkerFocus-response)))
  "Returns string type for a service object of type 'SetTransformableMarkerFocus-response"
  "jsk_interactive_marker/SetTransformableMarkerFocusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTransformableMarkerFocus-response>)))
  "Returns md5sum for a message object of type '<SetTransformableMarkerFocus-response>"
  "2008933b3c7227647cbe00c74682331a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTransformableMarkerFocus-response)))
  "Returns md5sum for a message object of type 'SetTransformableMarkerFocus-response"
  "2008933b3c7227647cbe00c74682331a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTransformableMarkerFocus-response>)))
  "Returns full string definition for message of type '<SetTransformableMarkerFocus-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTransformableMarkerFocus-response)))
  "Returns full string definition for message of type 'SetTransformableMarkerFocus-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTransformableMarkerFocus-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTransformableMarkerFocus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTransformableMarkerFocus-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTransformableMarkerFocus)))
  'SetTransformableMarkerFocus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTransformableMarkerFocus)))
  'SetTransformableMarkerFocus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformableMarkerFocus)))
  "Returns string type for a service object of type '<SetTransformableMarkerFocus>"
  "jsk_interactive_marker/SetTransformableMarkerFocus")