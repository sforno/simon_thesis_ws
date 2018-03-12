;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::GetTransformableMarkerColor)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'GetTransformableMarkerColor (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERCOLOR")
  (make-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERCOLOR"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERCOLORREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERCOLORREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERCOLORRESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERCOLORRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass jsk_interactive_marker::GetTransformableMarkerColorRequest
  :super ros::object
  :slots (_target_name ))

(defmethod jsk_interactive_marker::GetTransformableMarkerColorRequest
  (:init
   (&key
    ((:target_name __target_name) "")
    )
   (send-super :init)
   (setq _target_name (string __target_name))
   self)
  (:target_name
   (&optional __target_name)
   (if __target_name (setq _target_name __target_name)) _target_name)
  (:serialization-length
   ()
   (+
    ;; string _target_name
    4 (length _target_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_name
       (write-long (length _target_name) s) (princ _target_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jsk_interactive_marker::GetTransformableMarkerColorResponse
  :super ros::object
  :slots (_color ))

(defmethod jsk_interactive_marker::GetTransformableMarkerColorResponse
  (:init
   (&key
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _color __color)
   self)
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
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(defclass jsk_interactive_marker::GetTransformableMarkerColor
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::GetTransformableMarkerColor :md5sum-) "fe7a7c7dc2d7b081a4b282b1deff45b7")
(setf (get jsk_interactive_marker::GetTransformableMarkerColor :datatype-) "jsk_interactive_marker/GetTransformableMarkerColor")
(setf (get jsk_interactive_marker::GetTransformableMarkerColor :request) jsk_interactive_marker::GetTransformableMarkerColorRequest)
(setf (get jsk_interactive_marker::GetTransformableMarkerColor :response) jsk_interactive_marker::GetTransformableMarkerColorResponse)

(defmethod jsk_interactive_marker::GetTransformableMarkerColorRequest
  (:response () (instance jsk_interactive_marker::GetTransformableMarkerColorResponse :init)))

(setf (get jsk_interactive_marker::GetTransformableMarkerColorRequest :md5sum-) "fe7a7c7dc2d7b081a4b282b1deff45b7")
(setf (get jsk_interactive_marker::GetTransformableMarkerColorRequest :datatype-) "jsk_interactive_marker/GetTransformableMarkerColorRequest")
(setf (get jsk_interactive_marker::GetTransformableMarkerColorRequest :definition-)
      "string target_name
---
std_msgs/ColorRGBA color


================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
")

(setf (get jsk_interactive_marker::GetTransformableMarkerColorResponse :md5sum-) "fe7a7c7dc2d7b081a4b282b1deff45b7")
(setf (get jsk_interactive_marker::GetTransformableMarkerColorResponse :datatype-) "jsk_interactive_marker/GetTransformableMarkerColorResponse")
(setf (get jsk_interactive_marker::GetTransformableMarkerColorResponse :definition-)
      "string target_name
---
std_msgs/ColorRGBA color


================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
")



(provide :jsk_interactive_marker/GetTransformableMarkerColor "fe7a7c7dc2d7b081a4b282b1deff45b7")


