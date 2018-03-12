;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::GetMarkerDimensions)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'GetMarkerDimensions (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETMARKERDIMENSIONS")
  (make-package "JSK_INTERACTIVE_MARKER::GETMARKERDIMENSIONS"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETMARKERDIMENSIONSREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::GETMARKERDIMENSIONSREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETMARKERDIMENSIONSRESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::GETMARKERDIMENSIONSRESPONSE"))

(in-package "ROS")





(defclass jsk_interactive_marker::GetMarkerDimensionsRequest
  :super ros::object
  :slots (_target_name ))

(defmethod jsk_interactive_marker::GetMarkerDimensionsRequest
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

(defclass jsk_interactive_marker::GetMarkerDimensionsResponse
  :super ros::object
  :slots (_dimensions ))

(defmethod jsk_interactive_marker::GetMarkerDimensionsResponse
  (:init
   (&key
    ((:dimensions __dimensions) (instance jsk_interactive_marker::MarkerDimensions :init))
    )
   (send-super :init)
   (setq _dimensions __dimensions)
   self)
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:serialization-length
   ()
   (+
    ;; jsk_interactive_marker/MarkerDimensions _dimensions
    (send _dimensions :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jsk_interactive_marker/MarkerDimensions _dimensions
       (send _dimensions :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jsk_interactive_marker/MarkerDimensions _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;;
   self)
  )

(defclass jsk_interactive_marker::GetMarkerDimensions
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::GetMarkerDimensions :md5sum-) "abc2585f72e13579d759aff3b4419630")
(setf (get jsk_interactive_marker::GetMarkerDimensions :datatype-) "jsk_interactive_marker/GetMarkerDimensions")
(setf (get jsk_interactive_marker::GetMarkerDimensions :request) jsk_interactive_marker::GetMarkerDimensionsRequest)
(setf (get jsk_interactive_marker::GetMarkerDimensions :response) jsk_interactive_marker::GetMarkerDimensionsResponse)

(defmethod jsk_interactive_marker::GetMarkerDimensionsRequest
  (:response () (instance jsk_interactive_marker::GetMarkerDimensionsResponse :init)))

(setf (get jsk_interactive_marker::GetMarkerDimensionsRequest :md5sum-) "abc2585f72e13579d759aff3b4419630")
(setf (get jsk_interactive_marker::GetMarkerDimensionsRequest :datatype-) "jsk_interactive_marker/GetMarkerDimensionsRequest")
(setf (get jsk_interactive_marker::GetMarkerDimensionsRequest :definition-)
      "string target_name
---
MarkerDimensions dimensions


================================================================================
MSG: jsk_interactive_marker/MarkerDimensions
float32 x
float32 y
float32 z
float32 radius
float32 small_radius
int32 type
")

(setf (get jsk_interactive_marker::GetMarkerDimensionsResponse :md5sum-) "abc2585f72e13579d759aff3b4419630")
(setf (get jsk_interactive_marker::GetMarkerDimensionsResponse :datatype-) "jsk_interactive_marker/GetMarkerDimensionsResponse")
(setf (get jsk_interactive_marker::GetMarkerDimensionsResponse :definition-)
      "string target_name
---
MarkerDimensions dimensions


================================================================================
MSG: jsk_interactive_marker/MarkerDimensions
float32 x
float32 y
float32 z
float32 radius
float32 small_radius
int32 type
")



(provide :jsk_interactive_marker/GetMarkerDimensions "abc2585f72e13579d759aff3b4419630")


