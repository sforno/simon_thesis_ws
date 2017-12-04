;; Auto-generated. Do not edit!


(when (boundp 'p2os_msgs::DIO)
  (if (not (find-package "P2OS_MSGS"))
    (make-package "P2OS_MSGS"))
  (shadow 'DIO (find-package "P2OS_MSGS")))
(unless (find-package "P2OS_MSGS::DIO")
  (make-package "P2OS_MSGS::DIO"))

(in-package "ROS")
;;//! \htmlinclude DIO.msg.html


(defclass p2os_msgs::DIO
  :super ros::object
  :slots (_count _bits ))

(defmethod p2os_msgs::DIO
  (:init
   (&key
    ((:count __count) 0)
    ((:bits __bits) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   (setq _bits (round __bits))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:bits
   (&optional __bits)
   (if __bits (setq _bits __bits)) _bits)
  (:serialization-length
   ()
   (+
    ;; uint32 _count
    4
    ;; uint16 _bits
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _count
       (write-long _count s)
     ;; uint16 _bits
       (write-word _bits s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _bits
     (setq _bits (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get p2os_msgs::DIO :md5sum-) "d375575ab5b2233ab16927780da5f856")
(setf (get p2os_msgs::DIO :datatype-) "p2os_msgs/DIO")
(setf (get p2os_msgs::DIO :definition-)
      "uint32 count
uint16 bits

")



(provide :p2os_msgs/DIO "d375575ab5b2233ab16927780da5f856")


