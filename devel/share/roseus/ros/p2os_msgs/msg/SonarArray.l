;; Auto-generated. Do not edit!


(when (boundp 'p2os_msgs::SonarArray)
  (if (not (find-package "P2OS_MSGS"))
    (make-package "P2OS_MSGS"))
  (shadow 'SonarArray (find-package "P2OS_MSGS")))
(unless (find-package "P2OS_MSGS::SONARARRAY")
  (make-package "P2OS_MSGS::SONARARRAY"))

(in-package "ROS")
;;//! \htmlinclude SonarArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass p2os_msgs::SonarArray
  :super ros::object
  :slots (_header _ranges_count _ranges ))

(defmethod p2os_msgs::SonarArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ranges_count __ranges_count) 0)
    ((:ranges __ranges) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ranges_count (round __ranges_count))
   (setq _ranges __ranges)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ranges_count
   (&optional __ranges_count)
   (if __ranges_count (setq _ranges_count __ranges_count)) _ranges_count)
  (:ranges
   (&optional __ranges)
   (if __ranges (setq _ranges __ranges)) _ranges)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _ranges_count
    4
    ;; float64[] _ranges
    (* 8    (length _ranges)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _ranges_count
       (write-long _ranges_count s)
     ;; float64[] _ranges
     (write-long (length _ranges) s)
     (dotimes (i (length _ranges))
       (sys::poke (elt _ranges i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _ranges_count
     (setq _ranges_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ranges i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get p2os_msgs::SonarArray :md5sum-) "2984921c09aef26ad253c7629937a5bb")
(setf (get p2os_msgs::SonarArray :datatype-) "p2os_msgs/SonarArray")
(setf (get p2os_msgs::SonarArray :definition-)
      "Header    header
int32     ranges_count
float64[] ranges

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

")



(provide :p2os_msgs/SonarArray "2984921c09aef26ad253c7629937a5bb")


