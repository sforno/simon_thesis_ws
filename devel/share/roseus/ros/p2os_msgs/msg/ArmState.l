;; Auto-generated. Do not edit!


(when (boundp 'p2os_msgs::ArmState)
  (if (not (find-package "P2OS_MSGS"))
    (make-package "P2OS_MSGS"))
  (shadow 'ArmState (find-package "P2OS_MSGS")))
(unless (find-package "P2OS_MSGS::ARMSTATE")
  (make-package "P2OS_MSGS::ARMSTATE"))

(in-package "ROS")
;;//! \htmlinclude ArmState.msg.html


(defclass p2os_msgs::ArmState
  :super ros::object
  :slots (_arm_power ))

(defmethod p2os_msgs::ArmState
  (:init
   (&key
    ((:arm_power __arm_power) nil)
    )
   (send-super :init)
   (setq _arm_power __arm_power)
   self)
  (:arm_power
   (&optional __arm_power)
   (if __arm_power (setq _arm_power __arm_power)) _arm_power)
  (:serialization-length
   ()
   (+
    ;; bool _arm_power
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _arm_power
       (if _arm_power (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _arm_power
     (setq _arm_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get p2os_msgs::ArmState :md5sum-) "f78f2c49a110ba43464d5c16d2a19027")
(setf (get p2os_msgs::ArmState :datatype-) "p2os_msgs/ArmState")
(setf (get p2os_msgs::ArmState :definition-)
      "bool arm_power

")



(provide :p2os_msgs/ArmState "f78f2c49a110ba43464d5c16d2a19027")


