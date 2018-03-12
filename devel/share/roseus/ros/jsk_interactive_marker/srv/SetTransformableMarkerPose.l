;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::SetTransformableMarkerPose)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'SetTransformableMarkerPose (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERPOSE")
  (make-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERPOSE"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERPOSEREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERPOSEREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERPOSERESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass jsk_interactive_marker::SetTransformableMarkerPoseRequest
  :super ros::object
  :slots (_target_name _pose_stamped ))

(defmethod jsk_interactive_marker::SetTransformableMarkerPoseRequest
  (:init
   (&key
    ((:target_name __target_name) "")
    ((:pose_stamped __pose_stamped) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _target_name (string __target_name))
   (setq _pose_stamped __pose_stamped)
   self)
  (:target_name
   (&optional __target_name)
   (if __target_name (setq _target_name __target_name)) _target_name)
  (:pose_stamped
   (&rest __pose_stamped)
   (if (keywordp (car __pose_stamped))
       (send* _pose_stamped __pose_stamped)
     (progn
       (if __pose_stamped (setq _pose_stamped (car __pose_stamped)))
       _pose_stamped)))
  (:serialization-length
   ()
   (+
    ;; string _target_name
    4 (length _target_name)
    ;; geometry_msgs/PoseStamped _pose_stamped
    (send _pose_stamped :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_name
       (write-long (length _target_name) s) (princ _target_name s)
     ;; geometry_msgs/PoseStamped _pose_stamped
       (send _pose_stamped :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose_stamped
     (send _pose_stamped :deserialize buf ptr-) (incf ptr- (send _pose_stamped :serialization-length))
   ;;
   self)
  )

(defclass jsk_interactive_marker::SetTransformableMarkerPoseResponse
  :super ros::object
  :slots ())

(defmethod jsk_interactive_marker::SetTransformableMarkerPoseResponse
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

(defclass jsk_interactive_marker::SetTransformableMarkerPose
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::SetTransformableMarkerPose :md5sum-) "e19607b29b4528e87feff290fe261191")
(setf (get jsk_interactive_marker::SetTransformableMarkerPose :datatype-) "jsk_interactive_marker/SetTransformableMarkerPose")
(setf (get jsk_interactive_marker::SetTransformableMarkerPose :request) jsk_interactive_marker::SetTransformableMarkerPoseRequest)
(setf (get jsk_interactive_marker::SetTransformableMarkerPose :response) jsk_interactive_marker::SetTransformableMarkerPoseResponse)

(defmethod jsk_interactive_marker::SetTransformableMarkerPoseRequest
  (:response () (instance jsk_interactive_marker::SetTransformableMarkerPoseResponse :init)))

(setf (get jsk_interactive_marker::SetTransformableMarkerPoseRequest :md5sum-) "e19607b29b4528e87feff290fe261191")
(setf (get jsk_interactive_marker::SetTransformableMarkerPoseRequest :datatype-) "jsk_interactive_marker/SetTransformableMarkerPoseRequest")
(setf (get jsk_interactive_marker::SetTransformableMarkerPoseRequest :definition-)
      "string target_name
geometry_msgs/PoseStamped pose_stamped

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
---

")

(setf (get jsk_interactive_marker::SetTransformableMarkerPoseResponse :md5sum-) "e19607b29b4528e87feff290fe261191")
(setf (get jsk_interactive_marker::SetTransformableMarkerPoseResponse :datatype-) "jsk_interactive_marker/SetTransformableMarkerPoseResponse")
(setf (get jsk_interactive_marker::SetTransformableMarkerPoseResponse :definition-)
      "string target_name
geometry_msgs/PoseStamped pose_stamped

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
---

")



(provide :jsk_interactive_marker/SetTransformableMarkerPose "e19607b29b4528e87feff290fe261191")


