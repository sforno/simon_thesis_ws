
(cl:in-package :asdf)

(defsystem "jsk_rviz_plugins-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectFitCommand" :depends-on ("_package_ObjectFitCommand"))
    (:file "_package_ObjectFitCommand" :depends-on ("_package"))
    (:file "OverlayMenu" :depends-on ("_package_OverlayMenu"))
    (:file "_package_OverlayMenu" :depends-on ("_package"))
    (:file "OverlayText" :depends-on ("_package_OverlayText"))
    (:file "_package_OverlayText" :depends-on ("_package"))
    (:file "Pictogram" :depends-on ("_package_Pictogram"))
    (:file "_package_Pictogram" :depends-on ("_package"))
    (:file "PictogramArray" :depends-on ("_package_PictogramArray"))
    (:file "_package_PictogramArray" :depends-on ("_package"))
    (:file "RecordCommand" :depends-on ("_package_RecordCommand"))
    (:file "_package_RecordCommand" :depends-on ("_package"))
    (:file "StringStamped" :depends-on ("_package_StringStamped"))
    (:file "_package_StringStamped" :depends-on ("_package"))
    (:file "TransformableMarkerOperate" :depends-on ("_package_TransformableMarkerOperate"))
    (:file "_package_TransformableMarkerOperate" :depends-on ("_package"))
  ))