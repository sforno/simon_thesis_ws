;; Auto-generated. Do not edit!


(when (boundp 'p2os_msgs::LiftState)
  (if (not (find-package "P2OS_MSGS"))
    (make-package "P2OS_MSGS"))
  (shadow 'LiftState (find-package "P2OS_MSGS")))
(unless (find-package "P2OS_MSGS::LIFTSTATE")
  (make-package "P2OS_MSGS::LIFTSTATE"))

(in-package "ROS")
;;//! \htmlinclude LiftState.msg.html


(defclass p2os_msgs::LiftState
  :super ros::object
  :slots (_state _dir _position ))

(defmethod p2os_msgs::LiftState
  (:init
   (&key
    ((:state __state) 0)
    ((:dir __dir) 0)
    ((:position __position) 0.0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _dir (round __dir))
   (setq _position (float __position))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ;; int32 _dir
    4
    ;; float32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;; int32 _dir
       (write-long _dir s)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dir
     (setq _dir (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get p2os_msgs::LiftState :md5sum-) "4dcc2e41838611193ef6b9f90c9be41f")
(setf (get p2os_msgs::LiftState :datatype-) "p2os_msgs/LiftState")
(setf (get p2os_msgs::LiftState :definition-)
      "# direction -1 is downard, +1 is upward, 0 is stationary
int32 state
int32 dir
float32 position

")



(provide :p2os_msgs/LiftState "4dcc2e41838611193ef6b9f90c9be41f")


