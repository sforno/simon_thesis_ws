;; Auto-generated. Do not edit!


(when (boundp 'jsk_rviz_plugins::Pictogram)
  (if (not (find-package "JSK_RVIZ_PLUGINS"))
    (make-package "JSK_RVIZ_PLUGINS"))
  (shadow 'Pictogram (find-package "JSK_RVIZ_PLUGINS")))
(unless (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM")
  (make-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))

(in-package "ROS")
;;//! \htmlinclude Pictogram.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ADD*" (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(shadow '*ADD* (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(defconstant jsk_rviz_plugins::Pictogram::*ADD* 0)
(intern "*DELETE*" (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(shadow '*DELETE* (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(defconstant jsk_rviz_plugins::Pictogram::*DELETE* 1)
(intern "*ROTATE_Z*" (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(shadow '*ROTATE_Z* (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(defconstant jsk_rviz_plugins::Pictogram::*ROTATE_Z* 2)
(intern "*ROTATE_Y*" (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(shadow '*ROTATE_Y* (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(defconstant jsk_rviz_plugins::Pictogram::*ROTATE_Y* 3)
(intern "*ROTATE_X*" (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(shadow '*ROTATE_X* (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(defconstant jsk_rviz_plugins::Pictogram::*ROTATE_X* 4)
(intern "*JUMP*" (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(shadow '*JUMP* (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(defconstant jsk_rviz_plugins::Pictogram::*JUMP* 5)
(intern "*JUMP_ONCE*" (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(shadow '*JUMP_ONCE* (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(defconstant jsk_rviz_plugins::Pictogram::*JUMP_ONCE* 6)
(intern "*PICTOGRAM_MODE*" (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(shadow '*PICTOGRAM_MODE* (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(defconstant jsk_rviz_plugins::Pictogram::*PICTOGRAM_MODE* 0)
(intern "*STRING_MODE*" (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(shadow '*STRING_MODE* (find-package "JSK_RVIZ_PLUGINS::PICTOGRAM"))
(defconstant jsk_rviz_plugins::Pictogram::*STRING_MODE* 1)
(defclass jsk_rviz_plugins::Pictogram
  :super ros::object
  :slots (_header _pose _action _mode _character _size _ttl _speed _color ))

(defmethod jsk_rviz_plugins::Pictogram
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:action __action) 0)
    ((:mode __mode) 0)
    ((:character __character) "")
    ((:size __size) 0.0)
    ((:ttl __ttl) 0.0)
    ((:speed __speed) 0.0)
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _action (round __action))
   (setq _mode (round __mode))
   (setq _character (string __character))
   (setq _size (float __size))
   (setq _ttl (float __ttl))
   (setq _speed (float __speed))
   (setq _color __color)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:character
   (&optional __character)
   (if __character (setq _character __character)) _character)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:ttl
   (&optional __ttl)
   (if __ttl (setq _ttl __ttl)) _ttl)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; uint8 _action
    1
    ;; uint8 _mode
    1
    ;; string _character
    4 (length _character)
    ;; float64 _size
    8
    ;; float64 _ttl
    8
    ;; float64 _speed
    8
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; uint8 _action
       (write-byte _action s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; string _character
       (write-long (length _character) s) (princ _character s)
     ;; float64 _size
       (sys::poke _size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ttl
       (sys::poke _ttl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _character
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _character (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _size
     (setq _size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ttl
     (setq _ttl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(setf (get jsk_rviz_plugins::Pictogram :md5sum-) "29667e5652a8cfdc9c87d2ed97aa7bbc")
(setf (get jsk_rviz_plugins::Pictogram :datatype-) "jsk_rviz_plugins/Pictogram")
(setf (get jsk_rviz_plugins::Pictogram :definition-)
      "Header header
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

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :jsk_rviz_plugins/Pictogram "29667e5652a8cfdc9c87d2ed97aa7bbc")


