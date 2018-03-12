; Auto-generated. Do not edit!


(cl:in-package jsk_rviz_plugins-srv)


;//! \htmlinclude EusCommand-request.msg.html

(cl:defclass <EusCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass EusCommand-request (<EusCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EusCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EusCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-srv:<EusCommand-request> is deprecated: use jsk_rviz_plugins-srv:EusCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <EusCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-srv:command-val is deprecated.  Use jsk_rviz_plugins-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EusCommand-request>) ostream)
  "Serializes a message object of type '<EusCommand-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EusCommand-request>) istream)
  "Deserializes a message object of type '<EusCommand-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EusCommand-request>)))
  "Returns string type for a service object of type '<EusCommand-request>"
  "jsk_rviz_plugins/EusCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EusCommand-request)))
  "Returns string type for a service object of type 'EusCommand-request"
  "jsk_rviz_plugins/EusCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EusCommand-request>)))
  "Returns md5sum for a message object of type '<EusCommand-request>"
  "cba5e21e920a3a2b7b375cb65b64cdea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EusCommand-request)))
  "Returns md5sum for a message object of type 'EusCommand-request"
  "cba5e21e920a3a2b7b375cb65b64cdea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EusCommand-request>)))
  "Returns full string definition for message of type '<EusCommand-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EusCommand-request)))
  "Returns full string definition for message of type 'EusCommand-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EusCommand-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EusCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EusCommand-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude EusCommand-response.msg.html

(cl:defclass <EusCommand-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EusCommand-response (<EusCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EusCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EusCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-srv:<EusCommand-response> is deprecated: use jsk_rviz_plugins-srv:EusCommand-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EusCommand-response>) ostream)
  "Serializes a message object of type '<EusCommand-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EusCommand-response>) istream)
  "Deserializes a message object of type '<EusCommand-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EusCommand-response>)))
  "Returns string type for a service object of type '<EusCommand-response>"
  "jsk_rviz_plugins/EusCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EusCommand-response)))
  "Returns string type for a service object of type 'EusCommand-response"
  "jsk_rviz_plugins/EusCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EusCommand-response>)))
  "Returns md5sum for a message object of type '<EusCommand-response>"
  "cba5e21e920a3a2b7b375cb65b64cdea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EusCommand-response)))
  "Returns md5sum for a message object of type 'EusCommand-response"
  "cba5e21e920a3a2b7b375cb65b64cdea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EusCommand-response>)))
  "Returns full string definition for message of type '<EusCommand-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EusCommand-response)))
  "Returns full string definition for message of type 'EusCommand-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EusCommand-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EusCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EusCommand-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EusCommand)))
  'EusCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EusCommand)))
  'EusCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EusCommand)))
  "Returns string type for a service object of type '<EusCommand>"
  "jsk_rviz_plugins/EusCommand")