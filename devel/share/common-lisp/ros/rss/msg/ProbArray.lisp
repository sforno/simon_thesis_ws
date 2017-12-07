; Auto-generated. Do not edit!


(cl:in-package rss-msg)


;//! \htmlinclude ProbArray.msg.html

(cl:defclass <ProbArray> (roslisp-msg-protocol:ros-message)
  ((params
    :reader params
    :initarg :params
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (prob
    :reader prob
    :initarg :prob
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ProbArray (<ProbArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProbArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProbArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rss-msg:<ProbArray> is deprecated: use rss-msg:ProbArray instead.")))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <ProbArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-msg:params-val is deprecated.  Use rss-msg:params instead.")
  (params m))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <ProbArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-msg:prob-val is deprecated.  Use rss-msg:prob instead.")
  (prob m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProbArray>) ostream)
  "Serializes a message object of type '<ProbArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'params))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'prob))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProbArray>) istream)
  "Deserializes a message object of type '<ProbArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'prob) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'prob)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProbArray>)))
  "Returns string type for a message object of type '<ProbArray>"
  "rss/ProbArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProbArray)))
  "Returns string type for a message object of type 'ProbArray"
  "rss/ProbArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProbArray>)))
  "Returns md5sum for a message object of type '<ProbArray>"
  "5f31eb659a100c0d2cd41537252e23a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProbArray)))
  "Returns md5sum for a message object of type 'ProbArray"
  "5f31eb659a100c0d2cd41537252e23a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProbArray>)))
  "Returns full string definition for message of type '<ProbArray>"
  (cl:format cl:nil "float32[]   params~%float32[]   prob~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProbArray)))
  "Returns full string definition for message of type 'ProbArray"
  (cl:format cl:nil "float32[]   params~%float32[]   prob~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProbArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'prob) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProbArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ProbArray
    (cl:cons ':params (params msg))
    (cl:cons ':prob (prob msg))
))
