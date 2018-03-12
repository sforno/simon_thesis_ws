;; Auto-generated. Do not edit!


(when (boundp 'jsk_rviz_plugins::EusCommand)
  (if (not (find-package "JSK_RVIZ_PLUGINS"))
    (make-package "JSK_RVIZ_PLUGINS"))
  (shadow 'EusCommand (find-package "JSK_RVIZ_PLUGINS")))
(unless (find-package "JSK_RVIZ_PLUGINS::EUSCOMMAND")
  (make-package "JSK_RVIZ_PLUGINS::EUSCOMMAND"))
(unless (find-package "JSK_RVIZ_PLUGINS::EUSCOMMANDREQUEST")
  (make-package "JSK_RVIZ_PLUGINS::EUSCOMMANDREQUEST"))
(unless (find-package "JSK_RVIZ_PLUGINS::EUSCOMMANDRESPONSE")
  (make-package "JSK_RVIZ_PLUGINS::EUSCOMMANDRESPONSE"))

(in-package "ROS")





(defclass jsk_rviz_plugins::EusCommandRequest
  :super ros::object
  :slots (_command ))

(defmethod jsk_rviz_plugins::EusCommandRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jsk_rviz_plugins::EusCommandResponse
  :super ros::object
  :slots ())

(defmethod jsk_rviz_plugins::EusCommandResponse
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

(defclass jsk_rviz_plugins::EusCommand
  :super ros::object
  :slots ())

(setf (get jsk_rviz_plugins::EusCommand :md5sum-) "cba5e21e920a3a2b7b375cb65b64cdea")
(setf (get jsk_rviz_plugins::EusCommand :datatype-) "jsk_rviz_plugins/EusCommand")
(setf (get jsk_rviz_plugins::EusCommand :request) jsk_rviz_plugins::EusCommandRequest)
(setf (get jsk_rviz_plugins::EusCommand :response) jsk_rviz_plugins::EusCommandResponse)

(defmethod jsk_rviz_plugins::EusCommandRequest
  (:response () (instance jsk_rviz_plugins::EusCommandResponse :init)))

(setf (get jsk_rviz_plugins::EusCommandRequest :md5sum-) "cba5e21e920a3a2b7b375cb65b64cdea")
(setf (get jsk_rviz_plugins::EusCommandRequest :datatype-) "jsk_rviz_plugins/EusCommandRequest")
(setf (get jsk_rviz_plugins::EusCommandRequest :definition-)
      "string command
---

")

(setf (get jsk_rviz_plugins::EusCommandResponse :md5sum-) "cba5e21e920a3a2b7b375cb65b64cdea")
(setf (get jsk_rviz_plugins::EusCommandResponse :datatype-) "jsk_rviz_plugins/EusCommandResponse")
(setf (get jsk_rviz_plugins::EusCommandResponse :definition-)
      "string command
---

")



(provide :jsk_rviz_plugins/EusCommand "cba5e21e920a3a2b7b375cb65b64cdea")


