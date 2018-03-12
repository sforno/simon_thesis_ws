;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::SetParentMarker)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'SetParentMarker (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETPARENTMARKER")
  (make-package "JSK_INTERACTIVE_MARKER::SETPARENTMARKER"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETPARENTMARKERREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::SETPARENTMARKERREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETPARENTMARKERRESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::SETPARENTMARKERRESPONSE"))

(in-package "ROS")





(defclass jsk_interactive_marker::SetParentMarkerRequest
  :super ros::object
  :slots (_parent_topic_name _parent_marker_name _child_marker_name ))

(defmethod jsk_interactive_marker::SetParentMarkerRequest
  (:init
   (&key
    ((:parent_topic_name __parent_topic_name) "")
    ((:parent_marker_name __parent_marker_name) "")
    ((:child_marker_name __child_marker_name) "")
    )
   (send-super :init)
   (setq _parent_topic_name (string __parent_topic_name))
   (setq _parent_marker_name (string __parent_marker_name))
   (setq _child_marker_name (string __child_marker_name))
   self)
  (:parent_topic_name
   (&optional __parent_topic_name)
   (if __parent_topic_name (setq _parent_topic_name __parent_topic_name)) _parent_topic_name)
  (:parent_marker_name
   (&optional __parent_marker_name)
   (if __parent_marker_name (setq _parent_marker_name __parent_marker_name)) _parent_marker_name)
  (:child_marker_name
   (&optional __child_marker_name)
   (if __child_marker_name (setq _child_marker_name __child_marker_name)) _child_marker_name)
  (:serialization-length
   ()
   (+
    ;; string _parent_topic_name
    4 (length _parent_topic_name)
    ;; string _parent_marker_name
    4 (length _parent_marker_name)
    ;; string _child_marker_name
    4 (length _child_marker_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _parent_topic_name
       (write-long (length _parent_topic_name) s) (princ _parent_topic_name s)
     ;; string _parent_marker_name
       (write-long (length _parent_marker_name) s) (princ _parent_marker_name s)
     ;; string _child_marker_name
       (write-long (length _child_marker_name) s) (princ _child_marker_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _parent_topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _parent_marker_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_marker_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _child_marker_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_marker_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jsk_interactive_marker::SetParentMarkerResponse
  :super ros::object
  :slots ())

(defmethod jsk_interactive_marker::SetParentMarkerResponse
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

(defclass jsk_interactive_marker::SetParentMarker
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::SetParentMarker :md5sum-) "0fbeb5790154b3ebc3c1cc4917de6fcc")
(setf (get jsk_interactive_marker::SetParentMarker :datatype-) "jsk_interactive_marker/SetParentMarker")
(setf (get jsk_interactive_marker::SetParentMarker :request) jsk_interactive_marker::SetParentMarkerRequest)
(setf (get jsk_interactive_marker::SetParentMarker :response) jsk_interactive_marker::SetParentMarkerResponse)

(defmethod jsk_interactive_marker::SetParentMarkerRequest
  (:response () (instance jsk_interactive_marker::SetParentMarkerResponse :init)))

(setf (get jsk_interactive_marker::SetParentMarkerRequest :md5sum-) "0fbeb5790154b3ebc3c1cc4917de6fcc")
(setf (get jsk_interactive_marker::SetParentMarkerRequest :datatype-) "jsk_interactive_marker/SetParentMarkerRequest")
(setf (get jsk_interactive_marker::SetParentMarkerRequest :definition-)
      "string parent_topic_name
string parent_marker_name
string child_marker_name
---
")

(setf (get jsk_interactive_marker::SetParentMarkerResponse :md5sum-) "0fbeb5790154b3ebc3c1cc4917de6fcc")
(setf (get jsk_interactive_marker::SetParentMarkerResponse :datatype-) "jsk_interactive_marker/SetParentMarkerResponse")
(setf (get jsk_interactive_marker::SetParentMarkerResponse :definition-)
      "string parent_topic_name
string parent_marker_name
string child_marker_name
---
")



(provide :jsk_interactive_marker/SetParentMarker "0fbeb5790154b3ebc3c1cc4917de6fcc")


