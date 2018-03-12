;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::RemoveParentMarker)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'RemoveParentMarker (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::REMOVEPARENTMARKER")
  (make-package "JSK_INTERACTIVE_MARKER::REMOVEPARENTMARKER"))
(unless (find-package "JSK_INTERACTIVE_MARKER::REMOVEPARENTMARKERREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::REMOVEPARENTMARKERREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::REMOVEPARENTMARKERRESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::REMOVEPARENTMARKERRESPONSE"))

(in-package "ROS")





(defclass jsk_interactive_marker::RemoveParentMarkerRequest
  :super ros::object
  :slots (_child_marker_name ))

(defmethod jsk_interactive_marker::RemoveParentMarkerRequest
  (:init
   (&key
    ((:child_marker_name __child_marker_name) "")
    )
   (send-super :init)
   (setq _child_marker_name (string __child_marker_name))
   self)
  (:child_marker_name
   (&optional __child_marker_name)
   (if __child_marker_name (setq _child_marker_name __child_marker_name)) _child_marker_name)
  (:serialization-length
   ()
   (+
    ;; string _child_marker_name
    4 (length _child_marker_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _child_marker_name
       (write-long (length _child_marker_name) s) (princ _child_marker_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _child_marker_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_marker_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jsk_interactive_marker::RemoveParentMarkerResponse
  :super ros::object
  :slots ())

(defmethod jsk_interactive_marker::RemoveParentMarkerResponse
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

(defclass jsk_interactive_marker::RemoveParentMarker
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::RemoveParentMarker :md5sum-) "97181b161a4bd485fbd404baffdcfbf4")
(setf (get jsk_interactive_marker::RemoveParentMarker :datatype-) "jsk_interactive_marker/RemoveParentMarker")
(setf (get jsk_interactive_marker::RemoveParentMarker :request) jsk_interactive_marker::RemoveParentMarkerRequest)
(setf (get jsk_interactive_marker::RemoveParentMarker :response) jsk_interactive_marker::RemoveParentMarkerResponse)

(defmethod jsk_interactive_marker::RemoveParentMarkerRequest
  (:response () (instance jsk_interactive_marker::RemoveParentMarkerResponse :init)))

(setf (get jsk_interactive_marker::RemoveParentMarkerRequest :md5sum-) "97181b161a4bd485fbd404baffdcfbf4")
(setf (get jsk_interactive_marker::RemoveParentMarkerRequest :datatype-) "jsk_interactive_marker/RemoveParentMarkerRequest")
(setf (get jsk_interactive_marker::RemoveParentMarkerRequest :definition-)
      "string child_marker_name
---
")

(setf (get jsk_interactive_marker::RemoveParentMarkerResponse :md5sum-) "97181b161a4bd485fbd404baffdcfbf4")
(setf (get jsk_interactive_marker::RemoveParentMarkerResponse :datatype-) "jsk_interactive_marker/RemoveParentMarkerResponse")
(setf (get jsk_interactive_marker::RemoveParentMarkerResponse :definition-)
      "string child_marker_name
---
")



(provide :jsk_interactive_marker/RemoveParentMarker "97181b161a4bd485fbd404baffdcfbf4")


