;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::PoseStampedWithName)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'PoseStampedWithName (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::POSESTAMPEDWITHNAME")
  (make-package "JSK_INTERACTIVE_MARKER::POSESTAMPEDWITHNAME"))

(in-package "ROS")
;;//! \htmlinclude PoseStampedWithName.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass jsk_interactive_marker::PoseStampedWithName
  :super ros::object
  :slots (_name _pose ))

(defmethod jsk_interactive_marker::PoseStampedWithName
  (:init
   (&key
    ((:name __name) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _pose __pose)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get jsk_interactive_marker::PoseStampedWithName :md5sum-) "8377dd3ee630b796499a6be053df1d41")
(setf (get jsk_interactive_marker::PoseStampedWithName :datatype-) "jsk_interactive_marker/PoseStampedWithName")
(setf (get jsk_interactive_marker::PoseStampedWithName :definition-)
      "string name
geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :jsk_interactive_marker/PoseStampedWithName "8377dd3ee630b796499a6be053df1d41")


