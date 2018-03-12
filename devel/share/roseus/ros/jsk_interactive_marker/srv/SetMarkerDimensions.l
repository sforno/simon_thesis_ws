;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::SetMarkerDimensions)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'SetMarkerDimensions (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETMARKERDIMENSIONS")
  (make-package "JSK_INTERACTIVE_MARKER::SETMARKERDIMENSIONS"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETMARKERDIMENSIONSREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::SETMARKERDIMENSIONSREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETMARKERDIMENSIONSRESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::SETMARKERDIMENSIONSRESPONSE"))

(in-package "ROS")





(defclass jsk_interactive_marker::SetMarkerDimensionsRequest
  :super ros::object
  :slots (_target_name _dimensions ))

(defmethod jsk_interactive_marker::SetMarkerDimensionsRequest
  (:init
   (&key
    ((:target_name __target_name) "")
    ((:dimensions __dimensions) (instance jsk_interactive_marker::MarkerDimensions :init))
    )
   (send-super :init)
   (setq _target_name (string __target_name))
   (setq _dimensions __dimensions)
   self)
  (:target_name
   (&optional __target_name)
   (if __target_name (setq _target_name __target_name)) _target_name)
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
    ;; string _target_name
    4 (length _target_name)
    ;; jsk_interactive_marker/MarkerDimensions _dimensions
    (send _dimensions :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_name
       (write-long (length _target_name) s) (princ _target_name s)
     ;; jsk_interactive_marker/MarkerDimensions _dimensions
       (send _dimensions :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; jsk_interactive_marker/MarkerDimensions _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;;
   self)
  )

(defclass jsk_interactive_marker::SetMarkerDimensionsResponse
  :super ros::object
  :slots ())

(defmethod jsk_interactive_marker::SetMarkerDimensionsResponse
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

(defclass jsk_interactive_marker::SetMarkerDimensions
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::SetMarkerDimensions :md5sum-) "68f212be16364271f11f516c3f033749")
(setf (get jsk_interactive_marker::SetMarkerDimensions :datatype-) "jsk_interactive_marker/SetMarkerDimensions")
(setf (get jsk_interactive_marker::SetMarkerDimensions :request) jsk_interactive_marker::SetMarkerDimensionsRequest)
(setf (get jsk_interactive_marker::SetMarkerDimensions :response) jsk_interactive_marker::SetMarkerDimensionsResponse)

(defmethod jsk_interactive_marker::SetMarkerDimensionsRequest
  (:response () (instance jsk_interactive_marker::SetMarkerDimensionsResponse :init)))

(setf (get jsk_interactive_marker::SetMarkerDimensionsRequest :md5sum-) "68f212be16364271f11f516c3f033749")
(setf (get jsk_interactive_marker::SetMarkerDimensionsRequest :datatype-) "jsk_interactive_marker/SetMarkerDimensionsRequest")
(setf (get jsk_interactive_marker::SetMarkerDimensionsRequest :definition-)
      "string target_name
MarkerDimensions dimensions

================================================================================
MSG: jsk_interactive_marker/MarkerDimensions
float32 x
float32 y
float32 z
float32 radius
float32 small_radius
int32 type
---

")

(setf (get jsk_interactive_marker::SetMarkerDimensionsResponse :md5sum-) "68f212be16364271f11f516c3f033749")
(setf (get jsk_interactive_marker::SetMarkerDimensionsResponse :datatype-) "jsk_interactive_marker/SetMarkerDimensionsResponse")
(setf (get jsk_interactive_marker::SetMarkerDimensionsResponse :definition-)
      "string target_name
MarkerDimensions dimensions

================================================================================
MSG: jsk_interactive_marker/MarkerDimensions
float32 x
float32 y
float32 z
float32 radius
float32 small_radius
int32 type
---

")



(provide :jsk_interactive_marker/SetMarkerDimensions "68f212be16364271f11f516c3f033749")


