
(cl:in-package :asdf)

(defsystem "rss-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :rss-msg
)
  :components ((:file "_package")
    (:file "Localization" :depends-on ("_package_Localization"))
    (:file "_package_Localization" :depends-on ("_package"))
  ))