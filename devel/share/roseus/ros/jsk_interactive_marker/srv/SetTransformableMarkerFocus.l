;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::SetTransformableMarkerFocus)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'SetTransformableMarkerFocus (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERFOCUS")
  (make-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERFOCUS"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERFOCUSREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERFOCUSREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERFOCUSRESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::SETTRANSFORMABLEMARKERFOCUSRESPONSE"))

(in-package "ROS")





(defclass jsk_interactive_marker::SetTransformableMarkerFocusRequest
  :super ros::object
  :slots (_target_name ))

(defmethod jsk_interactive_marker::SetTransformableMarkerFocusRequest
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

(defclass jsk_interactive_marker::SetTransformableMarkerFocusResponse
  :super ros::object
  :slots ())

(defmethod jsk_interactive_marker::SetTransformableMarkerFocusResponse
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

(defclass jsk_interactive_marker::SetTransformableMarkerFocus
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::SetTransformableMarkerFocus :md5sum-) "2008933b3c7227647cbe00c74682331a")
(setf (get jsk_interactive_marker::SetTransformableMarkerFocus :datatype-) "jsk_interactive_marker/SetTransformableMarkerFocus")
(setf (get jsk_interactive_marker::SetTransformableMarkerFocus :request) jsk_interactive_marker::SetTransformableMarkerFocusRequest)
(setf (get jsk_interactive_marker::SetTransformableMarkerFocus :response) jsk_interactive_marker::SetTransformableMarkerFocusResponse)

(defmethod jsk_interactive_marker::SetTransformableMarkerFocusRequest
  (:response () (instance jsk_interactive_marker::SetTransformableMarkerFocusResponse :init)))

(setf (get jsk_interactive_marker::SetTransformableMarkerFocusRequest :md5sum-) "2008933b3c7227647cbe00c74682331a")
(setf (get jsk_interactive_marker::SetTransformableMarkerFocusRequest :datatype-) "jsk_interactive_marker/SetTransformableMarkerFocusRequest")
(setf (get jsk_interactive_marker::SetTransformableMarkerFocusRequest :definition-)
      "string target_name
---

")

(setf (get jsk_interactive_marker::SetTransformableMarkerFocusResponse :md5sum-) "2008933b3c7227647cbe00c74682331a")
(setf (get jsk_interactive_marker::SetTransformableMarkerFocusResponse :datatype-) "jsk_interactive_marker/SetTransformableMarkerFocusResponse")
(setf (get jsk_interactive_marker::SetTransformableMarkerFocusResponse :definition-)
      "string target_name
---

")



(provide :jsk_interactive_marker/SetTransformableMarkerFocus "2008933b3c7227647cbe00c74682331a")


