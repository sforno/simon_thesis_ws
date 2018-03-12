;; Auto-generated. Do not edit!


(when (boundp 'jsk_rviz_plugins::PictogramArray)
  (if (not (find-package "JSK_RVIZ_PLUGINS"))
    (make-package "JSK_RVIZ_PLUGINS"))
  (shadow 'PictogramArray (find-package "JSK_RVIZ_PLUGINS")))
(unless (find-package "JSK_RVIZ_PLUGINS::PICTOGRAMARRAY")
  (make-package "JSK_RVIZ_PLUGINS::PICTOGRAMARRAY"))

(in-package "ROS")
;;//! \htmlinclude PictogramArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass jsk_rviz_plugins::PictogramArray
  :super ros::object
  :slots (_header _pictograms ))

(defmethod jsk_rviz_plugins::PictogramArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pictograms __pictograms) (let (r) (dotimes (i 0) (push (instance jsk_rviz_plugins::Pictogram :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pictograms __pictograms)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pictograms
   (&rest __pictograms)
   (if (keywordp (car __pictograms))
       (send* _pictograms __pictograms)
     (progn
       (if __pictograms (setq _pictograms (car __pictograms)))
       _pictograms)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; jsk_rviz_plugins/Pictogram[] _pictograms
    (apply #'+ (send-all _pictograms :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; jsk_rviz_plugins/Pictogram[] _pictograms
     (write-long (length _pictograms) s)
     (dolist (elem _pictograms)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; jsk_rviz_plugins/Pictogram[] _pictograms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pictograms (let (r) (dotimes (i n) (push (instance jsk_rviz_plugins::Pictogram :init) r)) r))
     (dolist (elem- _pictograms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get jsk_rviz_plugins::PictogramArray :md5sum-) "bfdafbfcdf121aed91dae673b47ae3fe")
(setf (get jsk_rviz_plugins::PictogramArray :datatype-) "jsk_rviz_plugins/PictogramArray")
(setf (get jsk_rviz_plugins::PictogramArray :definition-)
      "Header header
Pictogram[] pictograms
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
MSG: jsk_rviz_plugins/Pictogram
Header header
geometry_msgs/Pose pose
uint8 ADD=0
uint8 DELETE=1
uint8 ROTATE_Z=2
uint8 ROTATE_Y=3
uint8 ROTATE_X=4
uint8 JUMP=5
uint8 JUMP_ONCE=6
uint8 action

uint8 PICTOGRAM_MODE=0 
uint8 STRING_MODE=1

uint8 mode
string character
float64 size
float64 ttl
float64 speed
std_msgs/ColorRGBA color

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

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :jsk_rviz_plugins/PictogramArray "bfdafbfcdf121aed91dae673b47ae3fe")


