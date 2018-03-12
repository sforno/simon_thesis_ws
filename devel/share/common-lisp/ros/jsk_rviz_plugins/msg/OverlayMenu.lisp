; Auto-generated. Do not edit!


(cl:in-package jsk_rviz_plugins-msg)


;//! \htmlinclude OverlayMenu.msg.html

(cl:defclass <OverlayMenu> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0)
   (current_index
    :reader current_index
    :initarg :current_index
    :type cl:integer
    :initform 0)
   (menus
    :reader menus
    :initarg :menus
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (title
    :reader title
    :initarg :title
    :type cl:string
    :initform ""))
)

(cl:defclass OverlayMenu (<OverlayMenu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OverlayMenu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OverlayMenu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-msg:<OverlayMenu> is deprecated: use jsk_rviz_plugins-msg:OverlayMenu instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <OverlayMenu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:action-val is deprecated.  Use jsk_rviz_plugins-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'current_index-val :lambda-list '(m))
(cl:defmethod current_index-val ((m <OverlayMenu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:current_index-val is deprecated.  Use jsk_rviz_plugins-msg:current_index instead.")
  (current_index m))

(cl:ensure-generic-function 'menus-val :lambda-list '(m))
(cl:defmethod menus-val ((m <OverlayMenu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:menus-val is deprecated.  Use jsk_rviz_plugins-msg:menus instead.")
  (menus m))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <OverlayMenu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:title-val is deprecated.  Use jsk_rviz_plugins-msg:title instead.")
  (title m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OverlayMenu>)))
    "Constants for message type '<OverlayMenu>"
  '((:ACTION_SELECT . 0)
    (:ACTION_CLOSE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OverlayMenu)))
    "Constants for message type 'OverlayMenu"
  '((:ACTION_SELECT . 0)
    (:ACTION_CLOSE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OverlayMenu>) ostream)
  "Serializes a message object of type '<OverlayMenu>"
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_index)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'menus))))
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
   (cl:slot-value msg 'menus))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OverlayMenu>) istream)
  "Deserializes a message object of type '<OverlayMenu>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_index)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'menus) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'menus)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OverlayMenu>)))
  "Returns string type for a message object of type '<OverlayMenu>"
  "jsk_rviz_plugins/OverlayMenu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OverlayMenu)))
  "Returns string type for a message object of type 'OverlayMenu"
  "jsk_rviz_plugins/OverlayMenu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OverlayMenu>)))
  "Returns md5sum for a message object of type '<OverlayMenu>"
  "fed3c7e9788f7ee37908107a2597b619")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OverlayMenu)))
  "Returns md5sum for a message object of type 'OverlayMenu"
  "fed3c7e9788f7ee37908107a2597b619")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OverlayMenu>)))
  "Returns full string definition for message of type '<OverlayMenu>"
  (cl:format cl:nil "int32 ACTION_SELECT=0~%int32 ACTION_CLOSE=1~%int32 action~%uint32 current_index~%string[] menus~%string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OverlayMenu)))
  "Returns full string definition for message of type 'OverlayMenu"
  (cl:format cl:nil "int32 ACTION_SELECT=0~%int32 ACTION_CLOSE=1~%int32 action~%uint32 current_index~%string[] menus~%string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OverlayMenu>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'menus) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'title))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OverlayMenu>))
  "Converts a ROS message object to a list"
  (cl:list 'OverlayMenu
    (cl:cons ':action (action msg))
    (cl:cons ':current_index (current_index msg))
    (cl:cons ':menus (menus msg))
    (cl:cons ':title (title msg))
))
