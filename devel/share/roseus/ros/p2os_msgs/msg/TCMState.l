;; Auto-generated. Do not edit!


(when (boundp 'p2os_msgs::TCMState)
  (if (not (find-package "P2OS_MSGS"))
    (make-package "P2OS_MSGS"))
  (shadow 'TCMState (find-package "P2OS_MSGS")))
(unless (find-package "P2OS_MSGS::TCMSTATE")
  (make-package "P2OS_MSGS::TCMSTATE"))

(in-package "ROS")
;;//! \htmlinclude TCMState.msg.html


(defclass p2os_msgs::TCMState
  :super ros::object
  :slots (_tcm_power ))

(defmethod p2os_msgs::TCMState
  (:init
   (&key
    ((:tcm_power __tcm_power) nil)
    )
   (send-super :init)
   (setq _tcm_power __tcm_power)
   self)
  (:tcm_power
   (&optional __tcm_power)
   (if __tcm_power (setq _tcm_power __tcm_power)) _tcm_power)
  (:serialization-length
   ()
   (+
    ;; bool _tcm_power
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _tcm_power
       (if _tcm_power (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _tcm_power
     (setq _tcm_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get p2os_msgs::TCMState :md5sum-) "c2bc91397a05d27a5eff6dafb47db890")
(setf (get p2os_msgs::TCMState :datatype-) "p2os_msgs/TCMState")
(setf (get p2os_msgs::TCMState :definition-)
      "bool tcm_power

")



(provide :p2os_msgs/TCMState "c2bc91397a05d27a5eff6dafb47db890")


