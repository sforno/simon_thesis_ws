; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude GetType-request.msg.html

(cl:defclass <GetType-request> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetType-request (<GetType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetType-request> is deprecated: use jsk_interactive_marker-srv:GetType-request instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <GetType-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:target_name-val is deprecated.  Use jsk_interactive_marker-srv:target_name instead.")
  (target_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetType-request>) ostream)
  "Serializes a message object of type '<GetType-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetType-request>) istream)
  "Deserializes a message object of type '<GetType-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetType-request>)))
  "Returns string type for a service object of type '<GetType-request>"
  "jsk_interactive_marker/GetTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetType-request)))
  "Returns string type for a service object of type 'GetType-request"
  "jsk_interactive_marker/GetTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetType-request>)))
  "Returns md5sum for a message object of type '<GetType-request>"
  "b2d10d8ab8b4019e557c38345217093d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetType-request)))
  "Returns md5sum for a message object of type 'GetType-request"
  "b2d10d8ab8b4019e557c38345217093d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetType-request>)))
  "Returns full string definition for message of type '<GetType-request>"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetType-request)))
  "Returns full string definition for message of type 'GetType-request"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetType-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetType-request
    (cl:cons ':target_name (target_name msg))
))
;//! \htmlinclude GetType-response.msg.html

(cl:defclass <GetType-response> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass GetType-response (<GetType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetType-response> is deprecated: use jsk_interactive_marker-srv:GetType-response instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GetType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:type-val is deprecated.  Use jsk_interactive_marker-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetType-response>) ostream)
  "Serializes a message object of type '<GetType-response>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetType-response>) istream)
  "Deserializes a message object of type '<GetType-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetType-response>)))
  "Returns string type for a service object of type '<GetType-response>"
  "jsk_interactive_marker/GetTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetType-response)))
  "Returns string type for a service object of type 'GetType-response"
  "jsk_interactive_marker/GetTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetType-response>)))
  "Returns md5sum for a message object of type '<GetType-response>"
  "b2d10d8ab8b4019e557c38345217093d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetType-response)))
  "Returns md5sum for a message object of type 'GetType-response"
  "b2d10d8ab8b4019e557c38345217093d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetType-response>)))
  "Returns full string definition for message of type '<GetType-response>"
  (cl:format cl:nil "int32 type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetType-response)))
  "Returns full string definition for message of type 'GetType-response"
  (cl:format cl:nil "int32 type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetType-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetType-response
    (cl:cons ':type (type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetType)))
  'GetType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetType)))
  'GetType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetType)))
  "Returns string type for a service object of type '<GetType>"
  "jsk_interactive_marker/GetType")