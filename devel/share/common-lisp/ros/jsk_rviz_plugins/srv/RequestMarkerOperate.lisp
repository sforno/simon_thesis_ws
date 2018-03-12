; Auto-generated. Do not edit!


(cl:in-package jsk_rviz_plugins-srv)


;//! \htmlinclude RequestMarkerOperate-request.msg.html

(cl:defclass <RequestMarkerOperate-request> (roslisp-msg-protocol:ros-message)
  ((operate
    :reader operate
    :initarg :operate
    :type jsk_rviz_plugins-msg:TransformableMarkerOperate
    :initform (cl:make-instance 'jsk_rviz_plugins-msg:TransformableMarkerOperate)))
)

(cl:defclass RequestMarkerOperate-request (<RequestMarkerOperate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestMarkerOperate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestMarkerOperate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-srv:<RequestMarkerOperate-request> is deprecated: use jsk_rviz_plugins-srv:RequestMarkerOperate-request instead.")))

(cl:ensure-generic-function 'operate-val :lambda-list '(m))
(cl:defmethod operate-val ((m <RequestMarkerOperate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_rviz_plugins-srv:operate-val is deprecated.  Use jsk_rviz_plugins-srv:operate instead.")
  (operate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestMarkerOperate-request>) ostream)
  "Serializes a message object of type '<RequestMarkerOperate-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'operate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestMarkerOperate-request>) istream)
  "Deserializes a message object of type '<RequestMarkerOperate-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'operate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestMarkerOperate-request>)))
  "Returns string type for a service object of type '<RequestMarkerOperate-request>"
  "jsk_rviz_plugins/RequestMarkerOperateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestMarkerOperate-request)))
  "Returns string type for a service object of type 'RequestMarkerOperate-request"
  "jsk_rviz_plugins/RequestMarkerOperateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestMarkerOperate-request>)))
  "Returns md5sum for a message object of type '<RequestMarkerOperate-request>"
  "5d5e6dca1cfed7e0be1a8c17221d0619")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestMarkerOperate-request)))
  "Returns md5sum for a message object of type 'RequestMarkerOperate-request"
  "5d5e6dca1cfed7e0be1a8c17221d0619")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestMarkerOperate-request>)))
  "Returns full string definition for message of type '<RequestMarkerOperate-request>"
  (cl:format cl:nil "jsk_rviz_plugins/TransformableMarkerOperate operate~%~%================================================================================~%MSG: jsk_rviz_plugins/TransformableMarkerOperate~%uint8 BOX=0~%uint8 CYLINDER=1~%uint8 TORUS=2~%uint8 MESH_RESOURCE=3~%~%uint8 INSERT=0~%uint8 ERASE=1~%uint8 ERASEALL=2~%uint8 ERASEFOCUS=3~%uint8 COPY=4~%~%int32 type~%int32 action~%string frame_id~%string name~%string description~%string mesh_resource~%bool mesh_use_embedded_materials~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestMarkerOperate-request)))
  "Returns full string definition for message of type 'RequestMarkerOperate-request"
  (cl:format cl:nil "jsk_rviz_plugins/TransformableMarkerOperate operate~%~%================================================================================~%MSG: jsk_rviz_plugins/TransformableMarkerOperate~%uint8 BOX=0~%uint8 CYLINDER=1~%uint8 TORUS=2~%uint8 MESH_RESOURCE=3~%~%uint8 INSERT=0~%uint8 ERASE=1~%uint8 ERASEALL=2~%uint8 ERASEFOCUS=3~%uint8 COPY=4~%~%int32 type~%int32 action~%string frame_id~%string name~%string description~%string mesh_resource~%bool mesh_use_embedded_materials~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestMarkerOperate-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'operate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestMarkerOperate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestMarkerOperate-request
    (cl:cons ':operate (operate msg))
))
;//! \htmlinclude RequestMarkerOperate-response.msg.html

(cl:defclass <RequestMarkerOperate-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RequestMarkerOperate-response (<RequestMarkerOperate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestMarkerOperate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestMarkerOperate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_rviz_plugins-srv:<RequestMarkerOperate-response> is deprecated: use jsk_rviz_plugins-srv:RequestMarkerOperate-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestMarkerOperate-response>) ostream)
  "Serializes a message object of type '<RequestMarkerOperate-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestMarkerOperate-response>) istream)
  "Deserializes a message object of type '<RequestMarkerOperate-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestMarkerOperate-response>)))
  "Returns string type for a service object of type '<RequestMarkerOperate-response>"
  "jsk_rviz_plugins/RequestMarkerOperateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestMarkerOperate-response)))
  "Returns string type for a service object of type 'RequestMarkerOperate-response"
  "jsk_rviz_plugins/RequestMarkerOperateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestMarkerOperate-response>)))
  "Returns md5sum for a message object of type '<RequestMarkerOperate-response>"
  "5d5e6dca1cfed7e0be1a8c17221d0619")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestMarkerOperate-response)))
  "Returns md5sum for a message object of type 'RequestMarkerOperate-response"
  "5d5e6dca1cfed7e0be1a8c17221d0619")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestMarkerOperate-response>)))
  "Returns full string definition for message of type '<RequestMarkerOperate-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestMarkerOperate-response)))
  "Returns full string definition for message of type 'RequestMarkerOperate-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestMarkerOperate-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestMarkerOperate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestMarkerOperate-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestMarkerOperate)))
  'RequestMarkerOperate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestMarkerOperate)))
  'RequestMarkerOperate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestMarkerOperate)))
  "Returns string type for a service object of type '<RequestMarkerOperate>"
  "jsk_rviz_plugins/RequestMarkerOperate")