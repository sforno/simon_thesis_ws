;; Auto-generated. Do not edit!


(when (boundp 'p2os_msgs::PTZState)
  (if (not (find-package "P2OS_MSGS"))
    (make-package "P2OS_MSGS"))
  (shadow 'PTZState (find-package "P2OS_MSGS")))
(unless (find-package "P2OS_MSGS::PTZSTATE")
  (make-package "P2OS_MSGS::PTZSTATE"))

(in-package "ROS")
;;//! \htmlinclude PTZState.msg.html


(defclass p2os_msgs::PTZState
  :super ros::object
  :slots (_pan _tilt _zoom _relative ))

(defmethod p2os_msgs::PTZState
  (:init
   (&key
    ((:pan __pan) 0)
    ((:tilt __tilt) 0)
    ((:zoom __zoom) 0)
    ((:relative __relative) nil)
    )
   (send-super :init)
   (setq _pan (round __pan))
   (setq _tilt (round __tilt))
   (setq _zoom (round __zoom))
   (setq _relative __relative)
   self)
  (:pan
   (&optional __pan)
   (if __pan (setq _pan __pan)) _pan)
  (:tilt
   (&optional __tilt)
   (if __tilt (setq _tilt __tilt)) _tilt)
  (:zoom
   (&optional __zoom)
   (if __zoom (setq _zoom __zoom)) _zoom)
  (:relative
   (&optional __relative)
   (if __relative (setq _relative __relative)) _relative)
  (:serialization-length
   ()
   (+
    ;; int32 _pan
    4
    ;; int32 _tilt
    4
    ;; int32 _zoom
    4
    ;; bool _relative
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pan
       (write-long _pan s)
     ;; int32 _tilt
       (write-long _tilt s)
     ;; int32 _zoom
       (write-long _zoom s)
     ;; bool _relative
       (if _relative (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pan
     (setq _pan (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tilt
     (setq _tilt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _zoom
     (setq _zoom (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _relative
     (setq _relative (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get p2os_msgs::PTZState :md5sum-) "1f71ce2a42b32376ea869eb051358045")
(setf (get p2os_msgs::PTZState :datatype-) "p2os_msgs/PTZState")
(setf (get p2os_msgs::PTZState :definition-)
      "int32 pan
int32 tilt
int32 zoom
bool relative

")



(provide :p2os_msgs/PTZState "1f71ce2a42b32376ea869eb051358045")


