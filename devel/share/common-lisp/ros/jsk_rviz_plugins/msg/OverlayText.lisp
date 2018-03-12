; Auto-generated. Do not edit!


(cl:in-package jsk_rviz_plugins-msg)


;//! \htmlinclude OverlayText.msg.html

(cl:defclass <OverlayText> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (left
    :reader left
    :initarg :left
    :type cl:integer
    :initform 0)
   (top
    :reader top
    :initarg :top
    :type cl:integer
    :initform 0)
   (bg_color
    :reader bg_color
    :initarg :bg_color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (line_width
    :reader line_width
    :initarg :line_width
    :type cl:integer
    :initform 0)
   (text_size
    :reader text_size
    :initarg :text_size
    :type cl:float
    :initform 0.0)
   (font
    :reader font
    :initarg :font
    :type cl:string
    :initform "")
   (fg_color
    :reader fg_color
    :initarg :fg_color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass OverlayText (<OverlayText>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OverlayText>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OverlayText)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-msg:<OverlayText> is deprecated: use jsk_rviz_plugins-msg:OverlayText instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <OverlayText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:action-val is deprecated.  Use jsk_rviz_plugins-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <OverlayText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:width-val is deprecated.  Use jsk_rviz_plugins-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <OverlayText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:height-val is deprecated.  Use jsk_rviz_plugins-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <OverlayText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:left-val is deprecated.  Use jsk_rviz_plugins-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'top-val :lambda-list '(m))
(cl:defmethod top-val ((m <OverlayText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:top-val is deprecated.  Use jsk_rviz_plugins-msg:top instead.")
  (top m))

(cl:ensure-generic-function 'bg_color-val :lambda-list '(m))
(cl:defmethod bg_color-val ((m <OverlayText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:bg_color-val is deprecated.  Use jsk_rviz_plugins-msg:bg_color instead.")
  (bg_color m))

(cl:ensure-generic-function 'line_width-val :lambda-list '(m))
(cl:defmethod line_width-val ((m <OverlayText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:line_width-val is deprecated.  Use jsk_rviz_plugins-msg:line_width instead.")
  (line_width m))

(cl:ensure-generic-function 'text_size-val :lambda-list '(m))
(cl:defmethod text_size-val ((m <OverlayText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:text_size-val is deprecated.  Use jsk_rviz_plugins-msg:text_size instead.")
  (text_size m))

(cl:ensure-generic-function 'font-val :lambda-list '(m))
(cl:defmethod font-val ((m <OverlayText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:font-val is deprecated.  Use jsk_rviz_plugins-msg:font instead.")
  (font m))

(cl:ensure-generic-function 'fg_color-val :lambda-list '(m))
(cl:defmethod fg_color-val ((m <OverlayText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:fg_color-val is deprecated.  Use jsk_rviz_plugins-msg:fg_color instead.")
  (fg_color m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <OverlayText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:text-val is deprecated.  Use jsk_rviz_plugins-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OverlayText>)))
    "Constants for message type '<OverlayText>"
  '((:ADD . 0)
    (:DELETE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OverlayText)))
    "Constants for message type 'OverlayText"
  '((:ADD . 0)
    (:DELETE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OverlayText>) ostream)
  "Serializes a message object of type '<OverlayText>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'top)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bg_color) ostream)
  (cl:let* ((signed (cl:slot-value msg 'line_width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'text_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'font))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'font))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fg_color) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OverlayText>) istream)
  "Deserializes a message object of type '<OverlayText>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'top) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bg_color) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'line_width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'text_size) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'font) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'font) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fg_color) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OverlayText>)))
  "Returns string type for a message object of type '<OverlayText>"
  "jsk_rviz_plugins/OverlayText")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OverlayText)))
  "Returns string type for a message object of type 'OverlayText"
  "jsk_rviz_plugins/OverlayText")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OverlayText>)))
  "Returns md5sum for a message object of type '<OverlayText>"
  "7efc1ed34881f913afcee6ba02aa1242")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OverlayText)))
  "Returns md5sum for a message object of type 'OverlayText"
  "7efc1ed34881f913afcee6ba02aa1242")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OverlayText>)))
  "Returns full string definition for message of type '<OverlayText>"
  (cl:format cl:nil "uint8 ADD = 0~%uint8 DELETE = 1~%~%uint8 action~%~%int32 width~%int32 height~%int32 left~%int32 top~%std_msgs/ColorRGBA bg_color~%~%int32 line_width~%float32 text_size~%string font~%std_msgs/ColorRGBA fg_color~%~%string text~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OverlayText)))
  "Returns full string definition for message of type 'OverlayText"
  (cl:format cl:nil "uint8 ADD = 0~%uint8 DELETE = 1~%~%uint8 action~%~%int32 width~%int32 height~%int32 left~%int32 top~%std_msgs/ColorRGBA bg_color~%~%int32 line_width~%float32 text_size~%string font~%std_msgs/ColorRGBA fg_color~%~%string text~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OverlayText>))
  (cl:+ 0
     1
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bg_color))
     4
     4
     4 (cl:length (cl:slot-value msg 'font))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fg_color))
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OverlayText>))
  "Converts a ROS message object to a list"
  (cl:list 'OverlayText
    (cl:cons ':action (action msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':left (left msg))
    (cl:cons ':top (top msg))
    (cl:cons ':bg_color (bg_color msg))
    (cl:cons ':line_width (line_width msg))
    (cl:cons ':text_size (text_size msg))
    (cl:cons ':font (font msg))
    (cl:cons ':fg_color (fg_color msg))
    (cl:cons ':text (text msg))
))
