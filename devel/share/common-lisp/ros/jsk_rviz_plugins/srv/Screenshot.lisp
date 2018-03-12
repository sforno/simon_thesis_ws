; Auto-generated. Do not edit!


(cl:in-package jsk_rviz_plugins-srv)


;//! \htmlinclude Screenshot-request.msg.html

(cl:defclass <Screenshot-request> (roslisp-msg-protocol:ros-message)
  ((file_name
    :reader file_name
    :initarg :file_name
    :type cl:string
    :initform ""))
)

(cl:defclass Screenshot-request (<Screenshot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Screenshot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Screenshot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-srv:<Screenshot-request> is deprecated: use jsk_rviz_plugins-srv:Screenshot-request instead.")))

(cl:ensure-generic-function 'file_name-val :lambda-list '(m))
(cl:defmethod file_name-val ((m <Screenshot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-srv:file_name-val is deprecated.  Use jsk_rviz_plugins-srv:file_name instead.")
  (file_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Screenshot-request>) ostream)
  "Serializes a message object of type '<Screenshot-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Screenshot-request>) istream)
  "Deserializes a message object of type '<Screenshot-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Screenshot-request>)))
  "Returns string type for a service object of type '<Screenshot-request>"
  "jsk_rviz_plugins/ScreenshotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Screenshot-request)))
  "Returns string type for a service object of type 'Screenshot-request"
  "jsk_rviz_plugins/ScreenshotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Screenshot-request>)))
  "Returns md5sum for a message object of type '<Screenshot-request>"
  "2415261c9605b9f38867ffbbe495fc04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Screenshot-request)))
  "Returns md5sum for a message object of type 'Screenshot-request"
  "2415261c9605b9f38867ffbbe495fc04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Screenshot-request>)))
  "Returns full string definition for message of type '<Screenshot-request>"
  (cl:format cl:nil "string file_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Screenshot-request)))
  "Returns full string definition for message of type 'Screenshot-request"
  (cl:format cl:nil "string file_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Screenshot-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Screenshot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Screenshot-request
    (cl:cons ':file_name (file_name msg))
))
;//! \htmlinclude Screenshot-response.msg.html

(cl:defclass <Screenshot-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Screenshot-response (<Screenshot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Screenshot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Screenshot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-srv:<Screenshot-response> is deprecated: use jsk_rviz_plugins-srv:Screenshot-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Screenshot-response>) ostream)
  "Serializes a message object of type '<Screenshot-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Screenshot-response>) istream)
  "Deserializes a message object of type '<Screenshot-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Screenshot-response>)))
  "Returns string type for a service object of type '<Screenshot-response>"
  "jsk_rviz_plugins/ScreenshotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Screenshot-response)))
  "Returns string type for a service object of type 'Screenshot-response"
  "jsk_rviz_plugins/ScreenshotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Screenshot-response>)))
  "Returns md5sum for a message object of type '<Screenshot-response>"
  "2415261c9605b9f38867ffbbe495fc04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Screenshot-response)))
  "Returns md5sum for a message object of type 'Screenshot-response"
  "2415261c9605b9f38867ffbbe495fc04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Screenshot-response>)))
  "Returns full string definition for message of type '<Screenshot-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Screenshot-response)))
  "Returns full string definition for message of type 'Screenshot-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Screenshot-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Screenshot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Screenshot-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Screenshot)))
  'Screenshot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Screenshot)))
  'Screenshot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Screenshot)))
  "Returns string type for a service object of type '<Screenshot>"
  "jsk_rviz_plugins/Screenshot")