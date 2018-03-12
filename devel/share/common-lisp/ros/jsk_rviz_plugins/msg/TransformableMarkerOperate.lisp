; Auto-generated. Do not edit!


(cl:in-package jsk_rviz_plugins-msg)


;//! \htmlinclude TransformableMarkerOperate.msg.html

(cl:defclass <TransformableMarkerOperate> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (mesh_resource
    :reader mesh_resource
    :initarg :mesh_resource
    :type cl:string
    :initform "")
   (mesh_use_embedded_materials
    :reader mesh_use_embedded_materials
    :initarg :mesh_use_embedded_materials
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TransformableMarkerOperate (<TransformableMarkerOperate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformableMarkerOperate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformableMarkerOperate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-msg:<TransformableMarkerOperate> is deprecated: use jsk_rviz_plugins-msg:TransformableMarkerOperate instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <TransformableMarkerOperate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:type-val is deprecated.  Use jsk_rviz_plugins-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <TransformableMarkerOperate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:action-val is deprecated.  Use jsk_rviz_plugins-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <TransformableMarkerOperate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:frame_id-val is deprecated.  Use jsk_rviz_plugins-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TransformableMarkerOperate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:name-val is deprecated.  Use jsk_rviz_plugins-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <TransformableMarkerOperate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:description-val is deprecated.  Use jsk_rviz_plugins-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'mesh_resource-val :lambda-list '(m))
(cl:defmethod mesh_resource-val ((m <TransformableMarkerOperate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:mesh_resource-val is deprecated.  Use jsk_rviz_plugins-msg:mesh_resource instead.")
  (mesh_resource m))

(cl:ensure-generic-function 'mesh_use_embedded_materials-val :lambda-list '(m))
(cl:defmethod mesh_use_embedded_materials-val ((m <TransformableMarkerOperate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-msg:mesh_use_embedded_materials-val is deprecated.  Use jsk_rviz_plugins-msg:mesh_use_embedded_materials instead.")
  (mesh_use_embedded_materials m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TransformableMarkerOperate>)))
    "Constants for message type '<TransformableMarkerOperate>"
  '((:BOX . 0)
    (:CYLINDER . 1)
    (:TORUS . 2)
    (:MESH_RESOURCE . 3)
    (:INSERT . 0)
    (:ERASE . 1)
    (:ERASEALL . 2)
    (:ERASEFOCUS . 3)
    (:COPY . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TransformableMarkerOperate)))
    "Constants for message type 'TransformableMarkerOperate"
  '((:BOX . 0)
    (:CYLINDER . 1)
    (:TORUS . 2)
    (:MESH_RESOURCE . 3)
    (:INSERT . 0)
    (:ERASE . 1)
    (:ERASEALL . 2)
    (:ERASEFOCUS . 3)
    (:COPY . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformableMarkerOperate>) ostream)
  "Serializes a message object of type '<TransformableMarkerOperate>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mesh_resource))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mesh_resource))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mesh_use_embedded_materials) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformableMarkerOperate>) istream)
  "Deserializes a message object of type '<TransformableMarkerOperate>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mesh_resource) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mesh_resource) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'mesh_use_embedded_materials) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformableMarkerOperate>)))
  "Returns string type for a message object of type '<TransformableMarkerOperate>"
  "jsk_rviz_plugins/TransformableMarkerOperate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformableMarkerOperate)))
  "Returns string type for a message object of type 'TransformableMarkerOperate"
  "jsk_rviz_plugins/TransformableMarkerOperate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformableMarkerOperate>)))
  "Returns md5sum for a message object of type '<TransformableMarkerOperate>"
  "3f5042567d7e11634fa94e4b5452169c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformableMarkerOperate)))
  "Returns md5sum for a message object of type 'TransformableMarkerOperate"
  "3f5042567d7e11634fa94e4b5452169c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformableMarkerOperate>)))
  "Returns full string definition for message of type '<TransformableMarkerOperate>"
  (cl:format cl:nil "uint8 BOX=0~%uint8 CYLINDER=1~%uint8 TORUS=2~%uint8 MESH_RESOURCE=3~%~%uint8 INSERT=0~%uint8 ERASE=1~%uint8 ERASEALL=2~%uint8 ERASEFOCUS=3~%uint8 COPY=4~%~%int32 type~%int32 action~%string frame_id~%string name~%string description~%string mesh_resource~%bool mesh_use_embedded_materials~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformableMarkerOperate)))
  "Returns full string definition for message of type 'TransformableMarkerOperate"
  (cl:format cl:nil "uint8 BOX=0~%uint8 CYLINDER=1~%uint8 TORUS=2~%uint8 MESH_RESOURCE=3~%~%uint8 INSERT=0~%uint8 ERASE=1~%uint8 ERASEALL=2~%uint8 ERASEFOCUS=3~%uint8 COPY=4~%~%int32 type~%int32 action~%string frame_id~%string name~%string description~%string mesh_resource~%bool mesh_use_embedded_materials~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformableMarkerOperate>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'mesh_resource))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformableMarkerOperate>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformableMarkerOperate
    (cl:cons ':type (type msg))
    (cl:cons ':action (action msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':description (description msg))
    (cl:cons ':mesh_resource (mesh_resource msg))
    (cl:cons ':mesh_use_embedded_materials (mesh_use_embedded_materials msg))
))
