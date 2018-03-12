; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude SetMarkerDimensions-request.msg.html

(cl:defclass <SetMarkerDimensions-request> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform "")
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type jsk_interactive_marker-msg:MarkerDimensions
    :initform (cl:make-instance 'jsk_interactive_marker-msg:MarkerDimensions)))
)

(cl:defclass SetMarkerDimensions-request (<SetMarkerDimensions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMarkerDimensions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMarkerDimensions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetMarkerDimensions-request> is deprecated: use jsk_interactive_marker-srv:SetMarkerDimensions-request instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <SetMarkerDimensions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:target_name-val is deprecated.  Use jsk_interactive_marker-srv:target_name instead.")
  (target_name m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <SetMarkerDimensions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:dimensions-val is deprecated.  Use jsk_interactive_marker-srv:dimensions instead.")
  (dimensions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMarkerDimensions-request>) ostream)
  "Serializes a message object of type '<SetMarkerDimensions-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMarkerDimensions-request>) istream)
  "Deserializes a message object of type '<SetMarkerDimensions-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMarkerDimensions-request>)))
  "Returns string type for a service object of type '<SetMarkerDimensions-request>"
  "jsk_interactive_marker/SetMarkerDimensionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMarkerDimensions-request)))
  "Returns string type for a service object of type 'SetMarkerDimensions-request"
  "jsk_interactive_marker/SetMarkerDimensionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMarkerDimensions-request>)))
  "Returns md5sum for a message object of type '<SetMarkerDimensions-request>"
  "68f212be16364271f11f516c3f033749")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMarkerDimensions-request)))
  "Returns md5sum for a message object of type 'SetMarkerDimensions-request"
  "68f212be16364271f11f516c3f033749")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMarkerDimensions-request>)))
  "Returns full string definition for message of type '<SetMarkerDimensions-request>"
  (cl:format cl:nil "string target_name~%MarkerDimensions dimensions~%~%================================================================================~%MSG: jsk_interactive_marker/MarkerDimensions~%float32 x~%float32 y~%float32 z~%float32 radius~%float32 small_radius~%int32 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMarkerDimensions-request)))
  "Returns full string definition for message of type 'SetMarkerDimensions-request"
  (cl:format cl:nil "string target_name~%MarkerDimensions dimensions~%~%================================================================================~%MSG: jsk_interactive_marker/MarkerDimensions~%float32 x~%float32 y~%float32 z~%float32 radius~%float32 small_radius~%int32 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMarkerDimensions-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMarkerDimensions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMarkerDimensions-request
    (cl:cons ':target_name (target_name msg))
    (cl:cons ':dimensions (dimensions msg))
))
;//! \htmlinclude SetMarkerDimensions-response.msg.html

(cl:defclass <SetMarkerDimensions-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetMarkerDimensions-response (<SetMarkerDimensions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMarkerDimensions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMarkerDimensions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetMarkerDimensions-response> is deprecated: use jsk_interactive_marker-srv:SetMarkerDimensions-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMarkerDimensions-response>) ostream)
  "Serializes a message object of type '<SetMarkerDimensions-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMarkerDimensions-response>) istream)
  "Deserializes a message object of type '<SetMarkerDimensions-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMarkerDimensions-response>)))
  "Returns string type for a service object of type '<SetMarkerDimensions-response>"
  "jsk_interactive_marker/SetMarkerDimensionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMarkerDimensions-response)))
  "Returns string type for a service object of type 'SetMarkerDimensions-response"
  "jsk_interactive_marker/SetMarkerDimensionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMarkerDimensions-response>)))
  "Returns md5sum for a message object of type '<SetMarkerDimensions-response>"
  "68f212be16364271f11f516c3f033749")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMarkerDimensions-response)))
  "Returns md5sum for a message object of type 'SetMarkerDimensions-response"
  "68f212be16364271f11f516c3f033749")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMarkerDimensions-response>)))
  "Returns full string definition for message of type '<SetMarkerDimensions-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMarkerDimensions-response)))
  "Returns full string definition for message of type 'SetMarkerDimensions-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMarkerDimensions-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMarkerDimensions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMarkerDimensions-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMarkerDimensions)))
  'SetMarkerDimensions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMarkerDimensions)))
  'SetMarkerDimensions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMarkerDimensions)))
  "Returns string type for a service object of type '<SetMarkerDimensions>"
  "jsk_interactive_marker/SetMarkerDimensions")