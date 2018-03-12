; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude SetParentMarker-request.msg.html

(cl:defclass <SetParentMarker-request> (roslisp-msg-protocol:ros-message)
  ((parent_topic_name
    :reader parent_topic_name
    :initarg :parent_topic_name
    :type cl:string
    :initform "")
   (parent_marker_name
    :reader parent_marker_name
    :initarg :parent_marker_name
    :type cl:string
    :initform "")
   (child_marker_name
    :reader child_marker_name
    :initarg :child_marker_name
    :type cl:string
    :initform ""))
)

(cl:defclass SetParentMarker-request (<SetParentMarker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParentMarker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParentMarker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetParentMarker-request> is deprecated: use jsk_interactive_marker-srv:SetParentMarker-request instead.")))

(cl:ensure-generic-function 'parent_topic_name-val :lambda-list '(m))
(cl:defmethod parent_topic_name-val ((m <SetParentMarker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:parent_topic_name-val is deprecated.  Use jsk_interactive_marker-srv:parent_topic_name instead.")
  (parent_topic_name m))

(cl:ensure-generic-function 'parent_marker_name-val :lambda-list '(m))
(cl:defmethod parent_marker_name-val ((m <SetParentMarker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:parent_marker_name-val is deprecated.  Use jsk_interactive_marker-srv:parent_marker_name instead.")
  (parent_marker_name m))

(cl:ensure-generic-function 'child_marker_name-val :lambda-list '(m))
(cl:defmethod child_marker_name-val ((m <SetParentMarker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:child_marker_name-val is deprecated.  Use jsk_interactive_marker-srv:child_marker_name instead.")
  (child_marker_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParentMarker-request>) ostream)
  "Serializes a message object of type '<SetParentMarker-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parent_topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parent_topic_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parent_marker_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parent_marker_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'child_marker_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'child_marker_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParentMarker-request>) istream)
  "Deserializes a message object of type '<SetParentMarker-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parent_topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_marker_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parent_marker_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'child_marker_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'child_marker_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParentMarker-request>)))
  "Returns string type for a service object of type '<SetParentMarker-request>"
  "jsk_interactive_marker/SetParentMarkerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParentMarker-request)))
  "Returns string type for a service object of type 'SetParentMarker-request"
  "jsk_interactive_marker/SetParentMarkerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParentMarker-request>)))
  "Returns md5sum for a message object of type '<SetParentMarker-request>"
  "0fbeb5790154b3ebc3c1cc4917de6fcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParentMarker-request)))
  "Returns md5sum for a message object of type 'SetParentMarker-request"
  "0fbeb5790154b3ebc3c1cc4917de6fcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParentMarker-request>)))
  "Returns full string definition for message of type '<SetParentMarker-request>"
  (cl:format cl:nil "string parent_topic_name~%string parent_marker_name~%string child_marker_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParentMarker-request)))
  "Returns full string definition for message of type 'SetParentMarker-request"
  (cl:format cl:nil "string parent_topic_name~%string parent_marker_name~%string child_marker_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParentMarker-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'parent_topic_name))
     4 (cl:length (cl:slot-value msg 'parent_marker_name))
     4 (cl:length (cl:slot-value msg 'child_marker_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParentMarker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParentMarker-request
    (cl:cons ':parent_topic_name (parent_topic_name msg))
    (cl:cons ':parent_marker_name (parent_marker_name msg))
    (cl:cons ':child_marker_name (child_marker_name msg))
))
;//! \htmlinclude SetParentMarker-response.msg.html

(cl:defclass <SetParentMarker-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetParentMarker-response (<SetParentMarker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParentMarker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParentMarker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetParentMarker-response> is deprecated: use jsk_interactive_marker-srv:SetParentMarker-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParentMarker-response>) ostream)
  "Serializes a message object of type '<SetParentMarker-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParentMarker-response>) istream)
  "Deserializes a message object of type '<SetParentMarker-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParentMarker-response>)))
  "Returns string type for a service object of type '<SetParentMarker-response>"
  "jsk_interactive_marker/SetParentMarkerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParentMarker-response)))
  "Returns string type for a service object of type 'SetParentMarker-response"
  "jsk_interactive_marker/SetParentMarkerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParentMarker-response>)))
  "Returns md5sum for a message object of type '<SetParentMarker-response>"
  "0fbeb5790154b3ebc3c1cc4917de6fcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParentMarker-response)))
  "Returns md5sum for a message object of type 'SetParentMarker-response"
  "0fbeb5790154b3ebc3c1cc4917de6fcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParentMarker-response>)))
  "Returns full string definition for message of type '<SetParentMarker-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParentMarker-response)))
  "Returns full string definition for message of type 'SetParentMarker-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParentMarker-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParentMarker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParentMarker-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetParentMarker)))
  'SetParentMarker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetParentMarker)))
  'SetParentMarker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParentMarker)))
  "Returns string type for a service object of type '<SetParentMarker>"
  "jsk_interactive_marker/SetParentMarker")