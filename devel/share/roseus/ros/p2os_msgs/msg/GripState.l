;; Auto-generated. Do not edit!


(when (boundp 'p2os_msgs::GripState)
  (if (not (find-package "P2OS_MSGS"))
    (make-package "P2OS_MSGS"))
  (shadow 'GripState (find-package "P2OS_MSGS")))
(unless (find-package "P2OS_MSGS::GRIPSTATE")
  (make-package "P2OS_MSGS::GRIPSTATE"))

(in-package "ROS")
;;//! \htmlinclude GripState.msg.html


(defclass p2os_msgs::GripState
  :super ros::object
  :slots (_state _dir _inner_beam _outer_beam _left_contact _right_contact ))

(defmethod p2os_msgs::GripState
  (:init
   (&key
    ((:state __state) 0)
    ((:dir __dir) 0)
    ((:inner_beam __inner_beam) nil)
    ((:outer_beam __outer_beam) nil)
    ((:left_contact __left_contact) nil)
    ((:right_contact __right_contact) nil)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _dir (round __dir))
   (setq _inner_beam __inner_beam)
   (setq _outer_beam __outer_beam)
   (setq _left_contact __left_contact)
   (setq _right_contact __right_contact)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:inner_beam
   (&optional __inner_beam)
   (if __inner_beam (setq _inner_beam __inner_beam)) _inner_beam)
  (:outer_beam
   (&optional __outer_beam)
   (if __outer_beam (setq _outer_beam __outer_beam)) _outer_beam)
  (:left_contact
   (&optional __left_contact)
   (if __left_contact (setq _left_contact __left_contact)) _left_contact)
  (:right_contact
   (&optional __right_contact)
   (if __right_contact (setq _right_contact __right_contact)) _right_contact)
  (:serialization-length
   ()
   (+
    ;; uint32 _state
    4
    ;; int32 _dir
    4
    ;; bool _inner_beam
    1
    ;; bool _outer_beam
    1
    ;; bool _left_contact
    1
    ;; bool _right_contact
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _state
       (write-long _state s)
     ;; int32 _dir
       (write-long _dir s)
     ;; bool _inner_beam
       (if _inner_beam (write-byte -1 s) (write-byte 0 s))
     ;; bool _outer_beam
       (if _outer_beam (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_contact
       (if _left_contact (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_contact
       (if _right_contact (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dir
     (setq _dir (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _inner_beam
     (setq _inner_beam (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _outer_beam
     (setq _outer_beam (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_contact
     (setq _left_contact (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_contact
     (setq _right_contact (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get p2os_msgs::GripState :md5sum-) "370eb3507be0ed1043be50a3da3a07c6")
(setf (get p2os_msgs::GripState :datatype-) "p2os_msgs/GripState")
(setf (get p2os_msgs::GripState :definition-)
      "# direction -1 is inward, +1 is outward, 0 is stationary
uint32 state
int32 dir
bool inner_beam
bool outer_beam
bool left_contact
bool right_contact

")



(provide :p2os_msgs/GripState "370eb3507be0ed1043be50a3da3a07c6")


