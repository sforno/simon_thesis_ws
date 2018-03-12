; Auto-generated. Do not edit!


(cl:in-package jsk_interactive_marker-srv)


;//! \htmlinclude SetHeuristic-request.msg.html

(cl:defclass <SetHeuristic-request> (roslisp-msg-protocol:ros-message)
  ((heuristic
    :reader heuristic
    :initarg :heuristic
    :type cl:string
    :initform ""))
)

(cl:defclass SetHeuristic-request (<SetHeuristic-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHeuristic-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHeuristic-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetHeuristic-request> is deprecated: use jsk_interactive_marker-srv:SetHeuristic-request instead.")))

(cl:ensure-generic-function 'heuristic-val :lambda-list '(m))
(cl:defmethod heuristic-val ((m <SetHeuristic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_interactive_marker-srv:heuristic-val is deprecated.  Use jsk_interactive_marker-srv:heuristic instead.")
  (heuristic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHeuristic-request>) ostream)
  "Serializes a message object of type '<SetHeuristic-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'heuristic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'heuristic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHeuristic-request>) istream)
  "Deserializes a message object of type '<SetHeuristic-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'heuristic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'heuristic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHeuristic-request>)))
  "Returns string type for a service object of type '<SetHeuristic-request>"
  "jsk_interactive_marker/SetHeuristicRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHeuristic-request)))
  "Returns string type for a service object of type 'SetHeuristic-request"
  "jsk_interactive_marker/SetHeuristicRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHeuristic-request>)))
  "Returns md5sum for a message object of type '<SetHeuristic-request>"
  "96bf1327fac533122d937324246cbde4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHeuristic-request)))
  "Returns md5sum for a message object of type 'SetHeuristic-request"
  "96bf1327fac533122d937324246cbde4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHeuristic-request>)))
  "Returns full string definition for message of type '<SetHeuristic-request>"
  (cl:format cl:nil "string heuristic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHeuristic-request)))
  "Returns full string definition for message of type 'SetHeuristic-request"
  (cl:format cl:nil "string heuristic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHeuristic-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'heuristic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHeuristic-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHeuristic-request
    (cl:cons ':heuristic (heuristic msg))
))
;//! \htmlinclude SetHeuristic-response.msg.html

(cl:defclass <SetHeuristic-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetHeuristic-response (<SetHeuristic-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHeuristic-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHeuristic-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_interactive_marker-srv:<SetHeuristic-response> is deprecated: use jsk_interactive_marker-srv:SetHeuristic-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHeuristic-response>) ostream)
  "Serializes a message object of type '<SetHeuristic-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHeuristic-response>) istream)
  "Deserializes a message object of type '<SetHeuristic-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHeuristic-response>)))
  "Returns string type for a service object of type '<SetHeuristic-response>"
  "jsk_interactive_marker/SetHeuristicResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHeuristic-response)))
  "Returns string type for a service object of type 'SetHeuristic-response"
  "jsk_interactive_marker/SetHeuristicResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHeuristic-response>)))
  "Returns md5sum for a message object of type '<SetHeuristic-response>"
  "96bf1327fac533122d937324246cbde4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHeuristic-response)))
  "Returns md5sum for a message object of type 'SetHeuristic-response"
  "96bf1327fac533122d937324246cbde4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHeuristic-response>)))
  "Returns full string definition for message of type '<SetHeuristic-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHeuristic-response)))
  "Returns full string definition for message of type 'SetHeuristic-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHeuristic-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHeuristic-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHeuristic-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetHeuristic)))
  'SetHeuristic-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetHeuristic)))
  'SetHeuristic-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHeuristic)))
  "Returns string type for a service object of type '<SetHeuristic>"
  "jsk_interactive_marker/SetHeuristic")