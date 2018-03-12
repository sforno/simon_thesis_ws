;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::SetTransformableMarkerColor)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'SetTransformableMarkerColor (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERCOLOR")
  (make-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERCOLOR"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERCOLORREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERCOLORREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERCOLORRESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERCOLORRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass jsk_interactive_marker::SetTransformableMarkerColorRequest
  :super ros::object
  :slots (_target_name _color ))

(defmethod jsk_interactive_marker::SetTransformableMarkerColorRequest
  (:init
   (&key
    ((:target_name __target_name) "")
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _target_name (string __target_name))
   (setq _color __color)
   self)
  (:target_name
   (&optional __target_name)
   (if __target_name (setq _target_name __target_name)) _target_name)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:serialization-length
   ()
   (+
    ;; string _target_name
    4 (length _target_name)
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_name
       (write-long (length _target_name) s) (princ _target_name s)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(defclass jsk_interactive_marker::SetTransformableMarkerColorResponse
  :super ros::object
  :slots ())

(defmethod jsk_interactive_marker::SetTransformableMarkerColorResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass jsk_interactive_marker::SetTransformableMarkerColor
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::SetTransformableMarkerColor :md5sum-) "6da9e77546dd19426d1dc251fb18d20e")
(setf (get jsk_interactive_marker::SetTransformableMarkerColor :datatype-) "jsk_interactive_marker/SetTransformableMarkerColor")
(setf (get jsk_interactive_marker::SetTransformableMarkerColor :request) jsk_interactive_marker::SetTransformableMarkerColorRequest)
(setf (get jsk_interactive_marker::SetTransformableMarkerColor :response) jsk_interactive_marker::SetTransformableMarkerColorResponse)

(defmethod jsk_interactive_marker::SetTransformableMarkerColorRequest
  (:response () (instance jsk_interactive_marker::SetTransformableMarkerColorResponse :init)))

(setf (get jsk_interactive_marker::SetTransformableMarkerColorRequest :md5sum-) "6da9e77546dd19426d1dc251fb18d20e")
(setf (get jsk_interactive_marker::SetTransformableMarkerColorRequest :datatype-) "jsk_interactive_marker/SetTransformableMarkerColorRequest")
(setf (get jsk_interactive_marker::SetTransformableMarkerColorRequest :definition-)
      "string target_name
std_msgs/ColorRGBA color

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---

")

(setf (get jsk_interactive_marker::SetTransformableMarkerColorResponse :md5sum-) "6da9e77546dd19426d1dc251fb18d20e")
(setf (get jsk_interactive_marker::SetTransformableMarkerColorResponse :datatype-) "jsk_interactive_marker/SetTransformableMarkerColorResponse")
(setf (get jsk_interactive_marker::SetTransformableMarkerColorResponse :definition-)
      "string target_name
std_msgs/ColorRGBA color

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---

")



(provide :jsk_interactive_marker/SetTransformableMarkerColor "6da9e77546dd19426d1dc251fb18d20e")


