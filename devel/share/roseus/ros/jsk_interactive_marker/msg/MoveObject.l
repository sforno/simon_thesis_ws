;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::MoveObject)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'MoveObject (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::MOVEOBJECT")
  (make-package "JSK_INTERACTIVE_MARKER::MOVEOBJECT"))

(in-package "ROS")
;;//! \htmlinclude MoveObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass jsk_interactive_marker::MoveObject
  :super ros::object
  :slots (_origin _goal _graspPose ))

(defmethod jsk_interactive_marker::MoveObject
  (:init
   (&key
    ((:origin __origin) (instance geometry_msgs::PoseStamped :init))
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    ((:graspPose __graspPose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _origin __origin)
   (setq _goal __goal)
   (setq _graspPose __graspPose)
   self)
  (:origin
   (&rest __origin)
   (if (keywordp (car __origin))
       (send* _origin __origin)
     (progn
       (if __origin (setq _origin (car __origin)))
       _origin)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:graspPose
   (&rest __graspPose)
   (if (keywordp (car __graspPose))
       (send* _graspPose __graspPose)
     (progn
       (if __graspPose (setq _graspPose (car __graspPose)))
       _graspPose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _origin
    (send _origin :serialization-length)
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ;; geometry_msgs/Pose _graspPose
    (send _graspPose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _origin
       (send _origin :serialize s)
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;; geometry_msgs/Pose _graspPose
       (send _graspPose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _origin
     (send _origin :deserialize buf ptr-) (incf ptr- (send _origin :serialization-length))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; geometry_msgs/Pose _graspPose
     (send _graspPose :deserialize buf ptr-) (incf ptr- (send _graspPose :serialization-length))
   ;;
   self)
  )

(setf (get jsk_interactive_marker::MoveObject :md5sum-) "398be7a942bfa9cfc119a5f96e3dc37a")
(setf (get jsk_interactive_marker::MoveObject :datatype-) "jsk_interactive_marker/MoveObject")
(setf (get jsk_interactive_marker::MoveObject :definition-)
      "geometry_msgs/PoseStamped origin
geometry_msgs/PoseStamped goal
geometry_msgs/Pose graspPose

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



(provide :jsk_interactive_marker/MoveObject "398be7a942bfa9cfc119a5f96e3dc37a")


