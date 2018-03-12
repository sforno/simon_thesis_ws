
(cl:in-package :asdf)

(defsystem "jsk_rviz_plugins-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :jsk_rviz_plugins-msg
)
  :components ((:file "_package")
    (:file "EusCommand" :depends-on ("_package_EusCommand"))
    (:file "_package_EusCommand" :depends-on ("_package"))
    (:file "RequestMarkerOperate" :depends-on ("_package_RequestMarkerOperate"))
    (:file "_package_RequestMarkerOperate" :depends-on ("_package"))
    (:file "Screenshot" :depends-on ("_package_Screenshot"))
    (:file "_package_Screenshot" :depends-on ("_package"))
  ))