;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::GetTransformableMarkerFocus)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'GetTransformableMarkerFocus (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERFOCUS")
  (make-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERFOCUS"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERFOCUSREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERFOCUSREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERFOCUSRESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKERFOCUSRESPONSE"))

(in-package "ROS")





(defclass jsk_interactive_marker::GetTransformableMarkerFocusRequest
  :super ros::object
  :slots ())

(defmethod jsk_interactive_marker::GetTransformableMarkerFocusRequest
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

(defclass jsk_interactive_marker::GetTransformableMarkerFocusResponse
  :super ros::object
  :slots (_target_name ))

(defmethod jsk_interactive_marker::GetTransformableMarkerFocusResponse
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

(defclass jsk_interactive_marker::GetTransformableMarkerFocus
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::GetTransformableMarkerFocus :md5sum-) "2008933b3c7227647cbe00c74682331a")
(setf (get jsk_interactive_marker::GetTransformableMarkerFocus :datatype-) "jsk_interactive_marker/GetTransformableMarkerFocus")
(setf (get jsk_interactive_marker::GetTransformableMarkerFocus :request) jsk_interactive_marker::GetTransformableMarkerFocusRequest)
(setf (get jsk_interactive_marker::GetTransformableMarkerFocus :response) jsk_interactive_marker::GetTransformableMarkerFocusResponse)

(defmethod jsk_interactive_marker::GetTransformableMarkerFocusRequest
  (:response () (instance jsk_interactive_marker::GetTransformableMarkerFocusResponse :init)))

(setf (get jsk_interactive_marker::GetTransformableMarkerFocusRequest :md5sum-) "2008933b3c7227647cbe00c74682331a")
(setf (get jsk_interactive_marker::GetTransformableMarkerFocusRequest :datatype-) "jsk_interactive_marker/GetTransformableMarkerFocusRequest")
(setf (get jsk_interactive_marker::GetTransformableMarkerFocusRequest :definition-)
      "---
string target_name

")

(setf (get jsk_interactive_marker::GetTransformableMarkerFocusResponse :md5sum-) "2008933b3c7227647cbe00c74682331a")
(setf (get jsk_interactive_marker::GetTransformableMarkerFocusResponse :datatype-) "jsk_interactive_marker/GetTransformableMarkerFocusResponse")
(setf (get jsk_interactive_marker::GetTransformableMarkerFocusResponse :definition-)
      "---
string target_name

")



(provide :jsk_interactive_marker/GetTransformableMarkerFocus "2008933b3c7227647cbe00c74682331a")


