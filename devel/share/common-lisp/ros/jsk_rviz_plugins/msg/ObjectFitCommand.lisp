; Auto-generated. Do not edit!


(cl:in-package jsk_rviz_plugins-msg)


;//! \htmlinclude ObjectFitCommand.msg.html

(cl:defclass <ObjectFitCommand> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObjectFitCommand (<ObjectFitCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectFitCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectFitCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-msg:<ObjectFitCommand> is deprecated: use jsk_rviz_plugins-msg:ObjectFitCommand instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <ObjectFitCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:command-val is deprecated.  Use jsk_rviz_plugins-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectFitCommand>)))
    "Constants for message type '<ObjectFitCommand>"
  '((:FIT . 0)
    (:NEAR . 1)
    (:OTHER . 2)
    (:REVERSE_FIT . 3)
    (:REVERSE_NEAR . 4)
    (:REVERSE_OTHER . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectFitCommand)))
    "Constants for message type 'ObjectFitCommand"
  '((:FIT . 0)
    (:NEAR . 1)
    (:OTHER . 2)
    (:REVERSE_FIT . 3)
    (:REVERSE_NEAR . 4)
    (:REVERSE_OTHER . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectFitCommand>) ostream)
  "Serializes a message object of type '<ObjectFitCommand>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectFitCommand>) istream)
  "Deserializes a message object of type '<ObjectFitCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectFitCommand>)))
  "Returns string type for a message object of type '<ObjectFitCommand>"
  "jsk_rviz_plugins/ObjectFitCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectFitCommand)))
  "Returns string type for a message object of type 'ObjectFitCommand"
  "jsk_rviz_plugins/ObjectFitCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectFitCommand>)))
  "Returns md5sum for a message object of type '<ObjectFitCommand>"
  "aaf37eac6a6717d09d438978a4117776")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectFitCommand)))
  "Returns md5sum for a message object of type 'ObjectFitCommand"
  "aaf37eac6a6717d09d438978a4117776")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectFitCommand>)))
  "Returns full string definition for message of type '<ObjectFitCommand>"
  (cl:format cl:nil "uint8 FIT=0~%uint8 NEAR=1~%uint8 OTHER=2~%uint8 REVERSE_FIT=3~%uint8 REVERSE_NEAR=4~%uint8 REVERSE_OTHER=5~%~%int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectFitCommand)))
  "Returns full string definition for message of type 'ObjectFitCommand"
  (cl:format cl:nil "uint8 FIT=0~%uint8 NEAR=1~%uint8 OTHER=2~%uint8 REVERSE_FIT=3~%uint8 REVERSE_NEAR=4~%uint8 REVERSE_OTHER=5~%~%int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectFitCommand>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectFitCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectFitCommand
    (cl:cons ':command (command msg))
))
