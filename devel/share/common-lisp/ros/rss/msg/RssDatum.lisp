; Auto-generated. Do not edit!


(cl:in-package rss-msg)


;//! \htmlinclude RssDatum.msg.html

(cl:defclass <RssDatum> (roslisp-msg-protocol:ros-message)
  ((rss
    :reader rss
    :initarg :rss
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass RssDatum (<RssDatum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RssDatum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RssDatum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rss-msg:<RssDatum> is deprecated: use rss-msg:RssDatum instead.")))

(cl:ensure-generic-function 'rss-val :lambda-list '(m))
(cl:defmethod rss-val ((m <RssDatum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-msg:rss-val is deprecated.  Use rss-msg:rss instead.")
  (rss m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RssDatum>) ostream)
  "Serializes a message object of type '<RssDatum>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rss))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'rss))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RssDatum>) istream)
  "Deserializes a message object of type '<RssDatum>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rss) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rss)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RssDatum>)))
  "Returns string type for a message object of type '<RssDatum>"
  "rss/RssDatum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RssDatum)))
  "Returns string type for a message object of type 'RssDatum"
  "rss/RssDatum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RssDatum>)))
  "Returns md5sum for a message object of type '<RssDatum>"
  "30f9e1fe2cc18569f41e9246340d3ec5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RssDatum)))
  "Returns md5sum for a message object of type 'RssDatum"
  "30f9e1fe2cc18569f41e9246340d3ec5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RssDatum>)))
  "Returns full string definition for message of type '<RssDatum>"
  (cl:format cl:nil "int8[]  rss~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RssDatum)))
  "Returns full string definition for message of type 'RssDatum"
  (cl:format cl:nil "int8[]  rss~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RssDatum>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rss) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RssDatum>))
  "Converts a ROS message object to a list"
  (cl:list 'RssDatum
    (cl:cons ':rss (rss msg))
))
