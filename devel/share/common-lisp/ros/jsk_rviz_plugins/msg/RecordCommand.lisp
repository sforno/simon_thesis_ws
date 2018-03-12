; Auto-generated. Do not edit!


(cl:in-package jsk_rviz_plugins-msg)


;//! \htmlinclude RecordCommand.msg.html

(cl:defclass <RecordCommand> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (target
    :reader target
    :initarg :target
    :type cl:string
    :initform ""))
)

(cl:defclass RecordCommand (<RecordCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-msg:<RecordCommand> is deprecated: use jsk_rviz_plugins-msg:RecordCommand instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <RecordCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:command-val is deprecated.  Use jsk_rviz_plugins-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <RecordCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:target-val is deprecated.  Use jsk_rviz_plugins-msg:target instead.")
  (target m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RecordCommand>)))
    "Constants for message type '<RecordCommand>"
  '((:RECORD . 0)
    (:RECORD_STOP . 1)
    (:PLAY . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RecordCommand)))
    "Constants for message type 'RecordCommand"
  '((:RECORD . 0)
    (:RECORD_STOP . 1)
    (:PLAY . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordCommand>) ostream)
  "Serializes a message object of type '<RecordCommand>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordCommand>) istream)
  "Deserializes a message object of type '<RecordCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordCommand>)))
  "Returns string type for a message object of type '<RecordCommand>"
  "jsk_rviz_plugins/RecordCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordCommand)))
  "Returns string type for a message object of type 'RecordCommand"
  "jsk_rviz_plugins/RecordCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordCommand>)))
  "Returns md5sum for a message object of type '<RecordCommand>"
  "31931c62eab5500089183eef0161c139")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordCommand)))
  "Returns md5sum for a message object of type 'RecordCommand"
  "31931c62eab5500089183eef0161c139")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordCommand>)))
  "Returns full string definition for message of type '<RecordCommand>"
  (cl:format cl:nil "uint8 RECORD=0~%uint8 RECORD_STOP=1~%uint8 PLAY=2~%~%int8 command~%string target~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordCommand)))
  "Returns full string definition for message of type 'RecordCommand"
  (cl:format cl:nil "uint8 RECORD=0~%uint8 RECORD_STOP=1~%uint8 PLAY=2~%~%int8 command~%string target~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordCommand>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'target))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordCommand
    (cl:cons ':command (command msg))
    (cl:cons ':target (target msg))
))
