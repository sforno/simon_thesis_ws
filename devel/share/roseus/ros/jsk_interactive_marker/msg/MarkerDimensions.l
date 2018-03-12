;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::MarkerDimensions)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'MarkerDimensions (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::MARKERDIMENSIONS")
  (make-package "JSK_INTERACTIVE_MARKER::MARKERDIMENSIONS"))

(in-package "ROS")
;;//! \htmlinclude MarkerDimensions.msg.html


(defclass jsk_interactive_marker::MarkerDimensions
  :super ros::object
  :slots (_x _y _z _radius _small_radius _type ))

(defmethod jsk_interactive_marker::MarkerDimensions
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:radius __radius) 0.0)
    ((:small_radius __small_radius) 0.0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _radius (float __radius))
   (setq _small_radius (float __small_radius))
   (setq _type (round __type))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:small_radius
   (&optional __small_radius)
   (if __small_radius (setq _small_radius __small_radius)) _small_radius)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _radius
    4
    ;; float32 _small_radius
    4
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _small_radius
       (sys::poke _small_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _small_radius
     (setq _small_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jsk_interactive_marker::MarkerDimensions :md5sum-) "78d79a51113d58c1ab04c7bc03c8facc")
(setf (get jsk_interactive_marker::MarkerDimensions :datatype-) "jsk_interactive_marker/MarkerDimensions")
(setf (get jsk_interactive_marker::MarkerDimensions :definition-)
      "float32 x
float32 y
float32 z
float32 radius
float32 small_radius
int32 type

")



(provide :jsk_interactive_marker/MarkerDimensions "78d79a51113d58c1ab04c7bc03c8facc")


