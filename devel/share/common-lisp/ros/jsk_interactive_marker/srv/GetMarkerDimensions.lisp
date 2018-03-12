; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude GetMarkerDimensions-request.msg.html

(cl:defclass <GetMarkerDimensions-request> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetMarkerDimensions-request (<GetMarkerDimensions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMarkerDimensions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMarkerDimensions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetMarkerDimensions-request> is deprecated: use jsk_interactive_marker-srv:GetMarkerDimensions-request instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <GetMarkerDimensions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:target_name-val is deprecated.  Use jsk_interactive_marker-srv:target_name instead.")
  (target_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMarkerDimensions-request>) ostream)
  "Serializes a message object of type '<GetMarkerDimensions-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMarkerDimensions-request>) istream)
  "Deserializes a message object of type '<GetMarkerDimensions-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMarkerDimensions-request>)))
  "Returns string type for a service object of type '<GetMarkerDimensions-request>"
  "jsk_interactive_marker/GetMarkerDimensionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMarkerDimensions-request)))
  "Returns string type for a service object of type 'GetMarkerDimensions-request"
  "jsk_interactive_marker/GetMarkerDimensionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMarkerDimensions-request>)))
  "Returns md5sum for a message object of type '<GetMarkerDimensions-request>"
  "abc2585f72e13579d759aff3b4419630")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMarkerDimensions-request)))
  "Returns md5sum for a message object of type 'GetMarkerDimensions-request"
  "abc2585f72e13579d759aff3b4419630")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMarkerDimensions-request>)))
  "Returns full string definition for message of type '<GetMarkerDimensions-request>"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMarkerDimensions-request)))
  "Returns full string definition for message of type 'GetMarkerDimensions-request"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMarkerDimensions-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMarkerDimensions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMarkerDimensions-request
    (cl:cons ':target_name (target_name msg))
))
;//! \htmlinclude GetMarkerDimensions-response.msg.html

(cl:defclass <GetMarkerDimensions-response> (roslisp-msg-protocol:ros-message)
  ((dimensions
    :reader dimensions
    :initarg :dimensions
    :type jsk_interactive_marker-msg:MarkerDimensions
    :initform (cl:make-instance 'jsk_interactive_marker-msg:MarkerDimensions)))
)

(cl:defclass GetMarkerDimensions-response (<GetMarkerDimensions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMarkerDimensions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMarkerDimensions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetMarkerDimensions-response> is deprecated: use jsk_interactive_marker-srv:GetMarkerDimensions-response instead.")))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <GetMarkerDimensions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:dimensions-val is deprecated.  Use jsk_interactive_marker-srv:dimensions instead.")
  (dimensions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMarkerDimensions-response>) ostream)
  "Serializes a message object of type '<GetMarkerDimensions-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMarkerDimensions-response>) istream)
  "Deserializes a message object of type '<GetMarkerDimensions-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMarkerDimensions-response>)))
  "Returns string type for a service object of type '<GetMarkerDimensions-response>"
  "jsk_interactive_marker/GetMarkerDimensionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMarkerDimensions-response)))
  "Returns string type for a service object of type 'GetMarkerDimensions-response"
  "jsk_interactive_marker/GetMarkerDimensionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMarkerDimensions-response>)))
  "Returns md5sum for a message object of type '<GetMarkerDimensions-response>"
  "abc2585f72e13579d759aff3b4419630")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMarkerDimensions-response)))
  "Returns md5sum for a message object of type 'GetMarkerDimensions-response"
  "abc2585f72e13579d759aff3b4419630")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMarkerDimensions-response>)))
  "Returns full string definition for message of type '<GetMarkerDimensions-response>"
  (cl:format cl:nil "MarkerDimensions dimensions~%~%~%================================================================================~%MSG: jsk_interactive_marker/MarkerDimensions~%float32 x~%float32 y~%float32 z~%float32 radius~%float32 small_radius~%int32 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMarkerDimensions-response)))
  "Returns full string definition for message of type 'GetMarkerDimensions-response"
  (cl:format cl:nil "MarkerDimensions dimensions~%~%~%================================================================================~%MSG: jsk_interactive_marker/MarkerDimensions~%float32 x~%float32 y~%float32 z~%float32 radius~%float32 small_radius~%int32 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMarkerDimensions-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMarkerDimensions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMarkerDimensions-response
    (cl:cons ':dimensions (dimensions msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMarkerDimensions)))
  'GetMarkerDimensions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMarkerDimensions)))
  'GetMarkerDimensions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMarkerDimensions)))
  "Returns string type for a service object of type '<GetMarkerDimensions>"
  "jsk_interactive_marker/GetMarkerDimensions")