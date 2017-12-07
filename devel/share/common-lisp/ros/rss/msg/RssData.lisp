; Auto-generated. Do not edit!


(cl:in-package rss-msg)


;//! \htmlinclude RssData.msg.html

(cl:defclass <RssData> (roslisp-msg-protocol:ros-message)
  ((time_start_ns
    :reader time_start_ns
    :initarg :time_start_ns
    :type cl:integer
    :initform 0)
   (duration_ms
    :reader duration_ms
    :initarg :duration_ms
    :type cl:integer
    :initform 0)
   (mac_address
    :reader mac_address
    :initarg :mac_address
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (freq
    :reader freq
    :initarg :freq
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (data
    :reader data
    :initarg :data
    :type (cl:vector rss-msg:RssDatum)
   :initform (cl:make-array 0 :element-type 'rss-msg:RssDatum :initial-element (cl:make-instance 'rss-msg:RssDatum))))
)

(cl:defclass RssData (<RssData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RssData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RssData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rss-msg:<RssData> is deprecated: use rss-msg:RssData instead.")))

(cl:ensure-generic-function 'time_start_ns-val :lambda-list '(m))
(cl:defmethod time_start_ns-val ((m <RssData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-msg:time_start_ns-val is deprecated.  Use rss-msg:time_start_ns instead.")
  (time_start_ns m))

(cl:ensure-generic-function 'duration_ms-val :lambda-list '(m))
(cl:defmethod duration_ms-val ((m <RssData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-msg:duration_ms-val is deprecated.  Use rss-msg:duration_ms instead.")
  (duration_ms m))

(cl:ensure-generic-function 'mac_address-val :lambda-list '(m))
(cl:defmethod mac_address-val ((m <RssData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-msg:mac_address-val is deprecated.  Use rss-msg:mac_address instead.")
  (mac_address m))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <RssData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-msg:freq-val is deprecated.  Use rss-msg:freq instead.")
  (freq m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RssData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rss-msg:data-val is deprecated.  Use rss-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RssData>) ostream)
  "Serializes a message object of type '<RssData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_start_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_start_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_start_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_start_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_start_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_start_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_start_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_start_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'duration_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'duration_ms)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mac_address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'mac_address))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'freq))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RssData>) istream)
  "Deserializes a message object of type '<RssData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_start_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_start_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_start_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_start_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_start_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_start_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_start_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_start_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'duration_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'duration_ms)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mac_address) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mac_address)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'freq) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'freq)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rss-msg:RssDatum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RssData>)))
  "Returns string type for a message object of type '<RssData>"
  "rss/RssData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RssData)))
  "Returns string type for a message object of type 'RssData"
  "rss/RssData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RssData>)))
  "Returns md5sum for a message object of type '<RssData>"
  "98edea83815c1c0eecd2ae4d690d4548")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RssData)))
  "Returns md5sum for a message object of type 'RssData"
  "98edea83815c1c0eecd2ae4d690d4548")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RssData>)))
  "Returns full string definition for message of type '<RssData>"
  (cl:format cl:nil "uint64      time_start_ns~%uint32      duration_ms~%string[]    mac_address~%int16[]     freq~%RssDatum[]  data~%~%================================================================================~%MSG: rss/RssDatum~%int8[]  rss~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RssData)))
  "Returns full string definition for message of type 'RssData"
  (cl:format cl:nil "uint64      time_start_ns~%uint32      duration_ms~%string[]    mac_address~%int16[]     freq~%RssDatum[]  data~%~%================================================================================~%MSG: rss/RssDatum~%int8[]  rss~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RssData>))
  (cl:+ 0
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mac_address) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'freq) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RssData>))
  "Converts a ROS message object to a list"
  (cl:list 'RssData
    (cl:cons ':time_start_ns (time_start_ns msg))
    (cl:cons ':duration_ms (duration_ms msg))
    (cl:cons ':mac_address (mac_address msg))
    (cl:cons ':freq (freq msg))
    (cl:cons ':data (data msg))
))
