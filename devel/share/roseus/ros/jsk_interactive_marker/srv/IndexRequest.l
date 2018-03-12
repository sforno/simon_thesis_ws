;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::IndexRequest)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'IndexRequest (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::INDEXREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::INDEXREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::INDEXREQUESTREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::INDEXREQUESTREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::INDEXREQUESTRESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::INDEXREQUESTRESPONSE"))

(in-package "ROS")

(if (not (find-package "JSK_RECOGNITION_MSGS"))
  (ros::roseus-add-msgs "jsk_recognition_msgs"))




(defclass jsk_interactive_marker::IndexRequestRequest
  :super ros::object
  :slots (_index ))

(defmethod jsk_interactive_marker::IndexRequestRequest
  (:init
   (&key
    ((:index __index) (instance jsk_recognition_msgs::Int32Stamped :init))
    )
   (send-super :init)
   (setq _index __index)
   self)
  (:index
   (&rest __index)
   (if (keywordp (car __index))
       (send* _index __index)
     (progn
       (if __index (setq _index (car __index)))
       _index)))
  (:serialization-length
   ()
   (+
    ;; jsk_recognition_msgs/Int32Stamped _index
    (send _index :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jsk_recognition_msgs/Int32Stamped _index
       (send _index :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jsk_recognition_msgs/Int32Stamped _index
     (send _index :deserialize buf ptr-) (incf ptr- (send _index :serialization-length))
   ;;
   self)
  )

(defclass jsk_interactive_marker::IndexRequestResponse
  :super ros::object
  :slots ())

(defmethod jsk_interactive_marker::IndexRequestResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass jsk_interactive_marker::IndexRequest
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::IndexRequest :md5sum-) "e7767d85a4611e638acb5e4f67adbc5a")
(setf (get jsk_interactive_marker::IndexRequest :datatype-) "jsk_interactive_marker/IndexRequest")
(setf (get jsk_interactive_marker::IndexRequest :request) jsk_interactive_marker::IndexRequestRequest)
(setf (get jsk_interactive_marker::IndexRequest :response) jsk_interactive_marker::IndexRequestResponse)

(defmethod jsk_interactive_marker::IndexRequestRequest
  (:response () (instance jsk_interactive_marker::IndexRequestResponse :init)))

(setf (get jsk_interactive_marker::IndexRequestRequest :md5sum-) "e7767d85a4611e638acb5e4f67adbc5a")
(setf (get jsk_interactive_marker::IndexRequestRequest :datatype-) "jsk_interactive_marker/IndexRequestRequest")
(setf (get jsk_interactive_marker::IndexRequestRequest :definition-)
      "jsk_recognition_msgs/Int32Stamped index

================================================================================
MSG: jsk_recognition_msgs/Int32Stamped
Header header
int32 data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
---
")

(setf (get jsk_interactive_marker::IndexRequestResponse :md5sum-) "e7767d85a4611e638acb5e4f67adbc5a")
(setf (get jsk_interactive_marker::IndexRequestResponse :datatype-) "jsk_interactive_marker/IndexRequestResponse")
(setf (get jsk_interactive_marker::IndexRequestResponse :definition-)
      "jsk_recognition_msgs/Int32Stamped index

================================================================================
MSG: jsk_recognition_msgs/Int32Stamped
Header header
int32 data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
---
")



(provide :jsk_interactive_marker/IndexRequest "e7767d85a4611e638acb5e4f67adbc5a")


