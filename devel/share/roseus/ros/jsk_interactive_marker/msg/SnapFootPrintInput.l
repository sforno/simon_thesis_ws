;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::SnapFootPrintInput)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'SnapFootPrintInput (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::SNAPFOOTPRINTINPUT")
  (make-package "JSK_INTERACTIVE_MARKER::SNAPFOOTPRINTINPUT"))

(in-package "ROS")
;;//! \htmlinclude SnapFootPrintInput.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass jsk_interactive_marker::SnapFootPrintInput
  :super ros::object
  :slots (_input_pose _lleg_pose _rleg_pose ))

(defmethod jsk_interactive_marker::SnapFootPrintInput
  (:init
   (&key
    ((:input_pose __input_pose) (instance geometry_msgs::PoseStamped :init))
    ((:lleg_pose __lleg_pose) (instance geometry_msgs::Pose :init))
    ((:rleg_pose __rleg_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _input_pose __input_pose)
   (setq _lleg_pose __lleg_pose)
   (setq _rleg_pose __rleg_pose)
   self)
  (:input_pose
   (&rest __input_pose)
   (if (keywordp (car __input_pose))
       (send* _input_pose __input_pose)
     (progn
       (if __input_pose (setq _input_pose (car __input_pose)))
       _input_pose)))
  (:lleg_pose
   (&rest __lleg_pose)
   (if (keywordp (car __lleg_pose))
       (send* _lleg_pose __lleg_pose)
     (progn
       (if __lleg_pose (setq _lleg_pose (car __lleg_pose)))
       _lleg_pose)))
  (:rleg_pose
   (&rest __rleg_pose)
   (if (keywordp (car __rleg_pose))
       (send* _rleg_pose __rleg_pose)
     (progn
       (if __rleg_pose (setq _rleg_pose (car __rleg_pose)))
       _rleg_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _input_pose
    (send _input_pose :serialization-length)
    ;; geometry_msgs/Pose _lleg_pose
    (send _lleg_pose :serialization-length)
    ;; geometry_msgs/Pose _rleg_pose
    (send _rleg_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _input_pose
       (send _input_pose :serialize s)
     ;; geometry_msgs/Pose _lleg_pose
       (send _lleg_pose :serialize s)
     ;; geometry_msgs/Pose _rleg_pose
       (send _rleg_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _input_pose
     (send _input_pose :deserialize buf ptr-) (incf ptr- (send _input_pose :serialization-length))
   ;; geometry_msgs/Pose _lleg_pose
     (send _lleg_pose :deserialize buf ptr-) (incf ptr- (send _lleg_pose :serialization-length))
   ;; geometry_msgs/Pose _rleg_pose
     (send _rleg_pose :deserialize buf ptr-) (incf ptr- (send _rleg_pose :serialization-length))
   ;;
   self)
  )

(setf (get jsk_interactive_marker::SnapFootPrintInput :md5sum-) "07fc9b79352f12bc13742f589662de86")
(setf (get jsk_interactive_marker::SnapFootPrintInput :datatype-) "jsk_interactive_marker/SnapFootPrintInput")
(setf (get jsk_interactive_marker::SnapFootPrintInput :definition-)
      "geometry_msgs/PoseStamped input_pose
geometry_msgs/Pose lleg_pose
geometry_msgs/Pose rleg_pose


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



(provide :jsk_interactive_marker/SnapFootPrintInput "07fc9b79352f12bc13742f589662de86")


