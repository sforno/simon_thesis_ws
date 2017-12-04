;; Auto-generated. Do not edit!


(when (boundp 'p2os_msgs::GripperState)
  (if (not (find-package "P2OS_MSGS"))
    (make-package "P2OS_MSGS"))
  (shadow 'GripperState (find-package "P2OS_MSGS")))
(unless (find-package "P2OS_MSGS::GRIPPERSTATE")
  (make-package "P2OS_MSGS::GRIPPERSTATE"))

(in-package "ROS")
;;//! \htmlinclude GripperState.msg.html


(defclass p2os_msgs::GripperState
  :super ros::object
  :slots (_grip _lift ))

(defmethod p2os_msgs::GripperState
  (:init
   (&key
    ((:grip __grip) (instance p2os_msgs::GripState :init))
    ((:lift __lift) (instance p2os_msgs::LiftState :init))
    )
   (send-super :init)
   (setq _grip __grip)
   (setq _lift __lift)
   self)
  (:grip
   (&rest __grip)
   (if (keywordp (car __grip))
       (send* _grip __grip)
     (progn
       (if __grip (setq _grip (car __grip)))
       _grip)))
  (:lift
   (&rest __lift)
   (if (keywordp (car __lift))
       (send* _lift __lift)
     (progn
       (if __lift (setq _lift (car __lift)))
       _lift)))
  (:serialization-length
   ()
   (+
    ;; p2os_msgs/GripState _grip
    (send _grip :serialization-length)
    ;; p2os_msgs/LiftState _lift
    (send _lift :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p2os_msgs/GripState _grip
       (send _grip :serialize s)
     ;; p2os_msgs/LiftState _lift
       (send _lift :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p2os_msgs/GripState _grip
     (send _grip :deserialize buf ptr-) (incf ptr- (send _grip :serialization-length))
   ;; p2os_msgs/LiftState _lift
     (send _lift :deserialize buf ptr-) (incf ptr- (send _lift :serialization-length))
   ;;
   self)
  )

(setf (get p2os_msgs::GripperState :md5sum-) "300b38b2a4173deb725df02fa70fc70b")
(setf (get p2os_msgs::GripperState :datatype-) "p2os_msgs/GripperState")
(setf (get p2os_msgs::GripperState :definition-)
      "GripState grip
LiftState lift

================================================================================
MSG: p2os_msgs/GripState
# direction -1 is inward, +1 is outward, 0 is stationary
uint32 state
int32 dir
bool inner_beam
bool outer_beam
bool left_contact
bool right_contact

================================================================================
MSG: p2os_msgs/LiftState
# direction -1 is downard, +1 is upward, 0 is stationary
int32 state
int32 dir
float32 position

")



(provide :p2os_msgs/GripperState "300b38b2a4173deb725df02fa70fc70b")


