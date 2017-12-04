;; Auto-generated. Do not edit!


(when (boundp 'p2os_msgs::MotorState)
  (if (not (find-package "P2OS_MSGS"))
    (make-package "P2OS_MSGS"))
  (shadow 'MotorState (find-package "P2OS_MSGS")))
(unless (find-package "P2OS_MSGS::MOTORSTATE")
  (make-package "P2OS_MSGS::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html


(defclass p2os_msgs::MotorState
  :super ros::object
  :slots (_state ))

(defmethod p2os_msgs::MotorState
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get p2os_msgs::MotorState :md5sum-) "7a2f37ef2ba405f0c7a15cc72663d6f0")
(setf (get p2os_msgs::MotorState :datatype-) "p2os_msgs/MotorState")
(setf (get p2os_msgs::MotorState :definition-)
      "int32   state

")



(provide :p2os_msgs/MotorState "7a2f37ef2ba405f0c7a15cc72663d6f0")


