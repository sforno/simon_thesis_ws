;; Auto-generated. Do not edit!


(when (boundp 'p2os_msgs::AIO)
  (if (not (find-package "P2OS_MSGS"))
    (make-package "P2OS_MSGS"))
  (shadow 'AIO (find-package "P2OS_MSGS")))
(unless (find-package "P2OS_MSGS::AIO")
  (make-package "P2OS_MSGS::AIO"))

(in-package "ROS")
;;//! \htmlinclude AIO.msg.html


(defclass p2os_msgs::AIO
  :super ros::object
  :slots (_voltages_count _voltages ))

(defmethod p2os_msgs::AIO
  (:init
   (&key
    ((:voltages_count __voltages_count) 0)
    ((:voltages __voltages) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _voltages_count (round __voltages_count))
   (setq _voltages __voltages)
   self)
  (:voltages_count
   (&optional __voltages_count)
   (if __voltages_count (setq _voltages_count __voltages_count)) _voltages_count)
  (:voltages
   (&optional __voltages)
   (if __voltages (setq _voltages __voltages)) _voltages)
  (:serialization-length
   ()
   (+
    ;; uint8 _voltages_count
    1
    ;; float32[] _voltages
    (* 4    (length _voltages)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _voltages_count
       (write-byte _voltages_count s)
     ;; float32[] _voltages
     (write-long (length _voltages) s)
     (dotimes (i (length _voltages))
       (sys::poke (elt _voltages i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _voltages_count
     (setq _voltages_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _voltages
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltages (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _voltages i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get p2os_msgs::AIO :md5sum-) "80e4ca5770a3db29064af246946ff4fe")
(setf (get p2os_msgs::AIO :datatype-) "p2os_msgs/AIO")
(setf (get p2os_msgs::AIO :definition-)
      "uint8 voltages_count
float32[] voltages

")



(provide :p2os_msgs/AIO "80e4ca5770a3db29064af246946ff4fe")


