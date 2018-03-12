
(cl:in-package :asdf)

(defsystem "jsk_interactive_marker-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "JointTrajectoryPointWithType" :depends-on ("_package_JointTrajectoryPointWithType"))
    (:file "_package_JointTrajectoryPointWithType" :depends-on ("_package"))
    (:file "JointTrajectoryWithType" :depends-on ("_package_JointTrajectoryWithType"))
    (:file "_package_JointTrajectoryWithType" :depends-on ("_package"))
    (:file "MarkerDimensions" :depends-on ("_package_MarkerDimensions"))
    (:file "_package_MarkerDimensions" :depends-on ("_package"))
    (:file "MarkerMenu" :depends-on ("_package_MarkerMenu"))
    (:file "_package_MarkerMenu" :depends-on ("_package"))
    (:file "MarkerPose" :depends-on ("_package_MarkerPose"))
    (:file "_package_MarkerPose" :depends-on ("_package"))
    (:file "MoveModel" :depends-on ("_package_MoveModel"))
    (:file "_package_MoveModel" :depends-on ("_package"))
    (:file "MoveObject" :depends-on ("_package_MoveObject"))
    (:file "_package_MoveObject" :depends-on ("_package"))
    (:file "PoseStampedWithName" :depends-on ("_package_PoseStampedWithName"))
    (:file "_package_PoseStampedWithName" :depends-on ("_package"))
    (:file "SnapFootPrintInput" :depends-on ("_package_SnapFootPrintInput"))
    (:file "_package_SnapFootPrintInput" :depends-on ("_package"))
  ))