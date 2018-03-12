; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude SetTransformableMarkerColor-request.msg.html

(cl:defclass <SetTransformableMarkerColor-request> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform "")
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass SetTransformableMarkerColor-request (<SetTransformableMarkerColor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTransformableMarkerColor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTransformableMarkerColor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetTransformableMarkerColor-request> is deprecated: use jsk_interactive_marker-srv:SetTransformableMarkerColor-request instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <SetTransformableMarkerColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:target_name-val is deprecated.  Use jsk_interactive_marker-srv:target_name instead.")
  (target_name m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <SetTransformableMarkerColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:color-val is deprecated.  Use jsk_interactive_marker-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTransformableMarkerColor-request>) ostream)
  "Serializes a message object of type '<SetTransformableMarkerColor-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTransformableMarkerColor-request>) istream)
  "Deserializes a message object of type '<SetTransformableMarkerColor-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTransformableMarkerColor-request>)))
  "Returns string type for a service object of type '<SetTransformableMarkerColor-request>"
  "jsk_interactive_marker/SetTransformableMarkerColorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformableMarkerColor-request)))
  "Returns string type for a service object of type 'SetTransformableMarkerColor-request"
  "jsk_interactive_marker/SetTransformableMarkerColorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTransformableMarkerColor-request>)))
  "Returns md5sum for a message object of type '<SetTransformableMarkerColor-request>"
  "6da9e77546dd19426d1dc251fb18d20e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTransformableMarkerColor-request)))
  "Returns md5sum for a message object of type 'SetTransformableMarkerColor-request"
  "6da9e77546dd19426d1dc251fb18d20e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTransformableMarkerColor-request>)))
  "Returns full string definition for message of type '<SetTransformableMarkerColor-request>"
  (cl:format cl:nil "string target_name~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTransformableMarkerColor-request)))
  "Returns full string definition for message of type 'SetTransformableMarkerColor-request"
  (cl:format cl:nil "string target_name~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTransformableMarkerColor-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTransformableMarkerColor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTransformableMarkerColor-request
    (cl:cons ':target_name (target_name msg))
    (cl:cons ':color (color msg))
))
;//! \htmlinclude SetTransformableMarkerColor-response.msg.html

(cl:defclass <SetTransformableMarkerColor-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetTransformableMarkerColor-response (<SetTransformableMarkerColor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTransformableMarkerColor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTransformableMarkerColor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetTransformableMarkerColor-response> is deprecated: use jsk_interactive_marker-srv:SetTransformableMarkerColor-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTransformableMarkerColor-response>) ostream)
  "Serializes a message object of type '<SetTransformableMarkerColor-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTransformableMarkerColor-response>) istream)
  "Deserializes a message object of type '<SetTransformableMarkerColor-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTransformableMarkerColor-response>)))
  "Returns string type for a service object of type '<SetTransformableMarkerColor-response>"
  "jsk_interactive_marker/SetTransformableMarkerColorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformableMarkerColor-response)))
  "Returns string type for a service object of type 'SetTransformableMarkerColor-response"
  "jsk_interactive_marker/SetTransformableMarkerColorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTransformableMarkerColor-response>)))
  "Returns md5sum for a message object of type '<SetTransformableMarkerColor-response>"
  "6da9e77546dd19426d1dc251fb18d20e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTransformableMarkerColor-response)))
  "Returns md5sum for a message object of type 'SetTransformableMarkerColor-response"
  "6da9e77546dd19426d1dc251fb18d20e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTransformableMarkerColor-response>)))
  "Returns full string definition for message of type '<SetTransformableMarkerColor-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTransformableMarkerColor-response)))
  "Returns full string definition for message of type 'SetTransformableMarkerColor-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTransformableMarkerColor-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTransformableMarkerColor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTransformableMarkerColor-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTransformableMarkerColor)))
  'SetTransformableMarkerColor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTransformableMarkerColor)))
  'SetTransformableMarkerColor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransformableMarkerColor)))
  "Returns string type for a service object of type '<SetTransformableMarkerColor>"
  "jsk_interactive_marker/SetTransformableMarkerColor")