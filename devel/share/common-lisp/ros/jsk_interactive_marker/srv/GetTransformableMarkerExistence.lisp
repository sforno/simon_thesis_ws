; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude GetTransformableMarkerExistence-request.msg.html

(cl:defclass <GetTransformableMarkerExistence-request> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetTransformableMarkerExistence-request (<GetTransformableMarkerExistence-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformableMarkerExistence-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformableMarkerExistence-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetTransformableMarkerExistence-request> is deprecated: use jsk_interactive_marker-srv:GetTransformableMarkerExistence-request instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <GetTransformableMarkerExistence-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:target_name-val is deprecated.  Use jsk_interactive_marker-srv:target_name instead.")
  (target_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformableMarkerExistence-request>) ostream)
  "Serializes a message object of type '<GetTransformableMarkerExistence-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformableMarkerExistence-request>) istream)
  "Deserializes a message object of type '<GetTransformableMarkerExistence-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformableMarkerExistence-request>)))
  "Returns string type for a service object of type '<GetTransformableMarkerExistence-request>"
  "jsk_interactive_marker/GetTransformableMarkerExistenceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerExistence-request)))
  "Returns string type for a service object of type 'GetTransformableMarkerExistence-request"
  "jsk_interactive_marker/GetTransformableMarkerExistenceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformableMarkerExistence-request>)))
  "Returns md5sum for a message object of type '<GetTransformableMarkerExistence-request>"
  "d5188923e69738836fa60c2cc3c5aa81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformableMarkerExistence-request)))
  "Returns md5sum for a message object of type 'GetTransformableMarkerExistence-request"
  "d5188923e69738836fa60c2cc3c5aa81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformableMarkerExistence-request>)))
  "Returns full string definition for message of type '<GetTransformableMarkerExistence-request>"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformableMarkerExistence-request)))
  "Returns full string definition for message of type 'GetTransformableMarkerExistence-request"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformableMarkerExistence-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformableMarkerExistence-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformableMarkerExistence-request
    (cl:cons ':target_name (target_name msg))
))
;//! \htmlinclude GetTransformableMarkerExistence-response.msg.html

(cl:defclass <GetTransformableMarkerExistence-response> (roslisp-msg-protocol:ros-message)
  ((existence
    :reader existence
    :initarg :existence
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetTransformableMarkerExistence-response (<GetTransformableMarkerExistence-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformableMarkerExistence-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformableMarkerExistence-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetTransformableMarkerExistence-response> is deprecated: use jsk_interactive_marker-srv:GetTransformableMarkerExistence-response instead.")))

(cl:ensure-generic-function 'existence-val :lambda-list '(m))
(cl:defmethod existence-val ((m <GetTransformableMarkerExistence-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:existence-val is deprecated.  Use jsk_interactive_marker-srv:existence instead.")
  (existence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformableMarkerExistence-response>) ostream)
  "Serializes a message object of type '<GetTransformableMarkerExistence-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'existence) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformableMarkerExistence-response>) istream)
  "Deserializes a message object of type '<GetTransformableMarkerExistence-response>"
    (cl:setf (cl:slot-value msg 'existence) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformableMarkerExistence-response>)))
  "Returns string type for a service object of type '<GetTransformableMarkerExistence-response>"
  "jsk_interactive_marker/GetTransformableMarkerExistenceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerExistence-response)))
  "Returns string type for a service object of type 'GetTransformableMarkerExistence-response"
  "jsk_interactive_marker/GetTransformableMarkerExistenceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformableMarkerExistence-response>)))
  "Returns md5sum for a message object of type '<GetTransformableMarkerExistence-response>"
  "d5188923e69738836fa60c2cc3c5aa81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformableMarkerExistence-response)))
  "Returns md5sum for a message object of type 'GetTransformableMarkerExistence-response"
  "d5188923e69738836fa60c2cc3c5aa81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformableMarkerExistence-response>)))
  "Returns full string definition for message of type '<GetTransformableMarkerExistence-response>"
  (cl:format cl:nil "bool existence~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformableMarkerExistence-response)))
  "Returns full string definition for message of type 'GetTransformableMarkerExistence-response"
  (cl:format cl:nil "bool existence~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformableMarkerExistence-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformableMarkerExistence-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformableMarkerExistence-response
    (cl:cons ':existence (existence msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTransformableMarkerExistence)))
  'GetTransformableMarkerExistence-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTransformableMarkerExistence)))
  'GetTransformableMarkerExistence-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerExistence)))
  "Returns string type for a service object of type '<GetTransformableMarkerExistence>"
  "jsk_interactive_marker/GetTransformableMarkerExistence")