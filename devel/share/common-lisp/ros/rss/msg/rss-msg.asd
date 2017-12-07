
(cl:in-package :asdf)

(defsystem "rss-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ProbArray" :depends-on ("_package_ProbArray"))
    (:file "_package_ProbArray" :depends-on ("_package"))
    (:file "RssData" :depends-on ("_package_RssData"))
    (:file "_package_RssData" :depends-on ("_package"))
    (:file "RssDatum" :depends-on ("_package_RssDatum"))
    (:file "_package_RssDatum" :depends-on ("_package"))
  ))