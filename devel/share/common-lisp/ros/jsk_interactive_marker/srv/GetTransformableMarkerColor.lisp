; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude GetTransformableMarkerColor-request.msg.html

(cl:defclass <GetTransformableMarkerColor-request> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetTransformableMarkerColor-request (<GetTransformableMarkerColor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformableMarkerColor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformableMarkerColor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetTransformableMarkerColor-request> is deprecated: use jsk_interactive_marker-srv:GetTransformableMarkerColor-request instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <GetTransformableMarkerColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:target_name-val is deprecated.  Use jsk_interactive_marker-srv:target_name instead.")
  (target_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformableMarkerColor-request>) ostream)
  "Serializes a message object of type '<GetTransformableMarkerColor-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformableMarkerColor-request>) istream)
  "Deserializes a message object of type '<GetTransformableMarkerColor-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformableMarkerColor-request>)))
  "Returns string type for a service object of type '<GetTransformableMarkerColor-request>"
  "jsk_interactive_marker/GetTransformableMarkerColorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerColor-request)))
  "Returns string type for a service object of type 'GetTransformableMarkerColor-request"
  "jsk_interactive_marker/GetTransformableMarkerColorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformableMarkerColor-request>)))
  "Returns md5sum for a message object of type '<GetTransformableMarkerColor-request>"
  "fe7a7c7dc2d7b081a4b282b1deff45b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformableMarkerColor-request)))
  "Returns md5sum for a message object of type 'GetTransformableMarkerColor-request"
  "fe7a7c7dc2d7b081a4b282b1deff45b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformableMarkerColor-request>)))
  "Returns full string definition for message of type '<GetTransformableMarkerColor-request>"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformableMarkerColor-request)))
  "Returns full string definition for message of type 'GetTransformableMarkerColor-request"
  (cl:format cl:nil "string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformableMarkerColor-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformableMarkerColor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformableMarkerColor-request
    (cl:cons ':target_name (target_name msg))
))
;//! \htmlinclude GetTransformableMarkerColor-response.msg.html

(cl:defclass <GetTransformableMarkerColor-response> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass GetTransformableMarkerColor-response (<GetTransformableMarkerColor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformableMarkerColor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformableMarkerColor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<GetTransformableMarkerColor-response> is deprecated: use jsk_interactive_marker-srv:GetTransformableMarkerColor-response instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <GetTransformableMarkerColor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:color-val is deprecated.  Use jsk_interactive_marker-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformableMarkerColor-response>) ostream)
  "Serializes a message object of type '<GetTransformableMarkerColor-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformableMarkerColor-response>) istream)
  "Deserializes a message object of type '<GetTransformableMarkerColor-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformableMarkerColor-response>)))
  "Returns string type for a service object of type '<GetTransformableMarkerColor-response>"
  "jsk_interactive_marker/GetTransformableMarkerColorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerColor-response)))
  "Returns string type for a service object of type 'GetTransformableMarkerColor-response"
  "jsk_interactive_marker/GetTransformableMarkerColorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformableMarkerColor-response>)))
  "Returns md5sum for a message object of type '<GetTransformableMarkerColor-response>"
  "fe7a7c7dc2d7b081a4b282b1deff45b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformableMarkerColor-response)))
  "Returns md5sum for a message object of type 'GetTransformableMarkerColor-response"
  "fe7a7c7dc2d7b081a4b282b1deff45b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformableMarkerColor-response>)))
  "Returns full string definition for message of type '<GetTransformableMarkerColor-response>"
  (cl:format cl:nil "std_msgs/ColorRGBA color~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformableMarkerColor-response)))
  "Returns full string definition for message of type 'GetTransformableMarkerColor-response"
  (cl:format cl:nil "std_msgs/ColorRGBA color~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformableMarkerColor-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformableMarkerColor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformableMarkerColor-response
    (cl:cons ':color (color msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTransformableMarkerColor)))
  'GetTransformableMarkerColor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTransformableMarkerColor)))
  'GetTransformableMarkerColor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformableMarkerColor)))
  "Returns string type for a service object of type '<GetTransformableMarkerColor>"
  "jsk_interactive_marker/GetTransformableMarkerColor")