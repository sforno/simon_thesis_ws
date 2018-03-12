;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::GetTransformableMarkerExistence)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'GetTransformableMarkerExistence (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKEREXISTENCE")
  (make-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKEREXISTENCE"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKEREXISTENCEREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKEREXISTENCEREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKEREXISTENCERESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::GETTRANSFORMABLEMARKEREXISTENCERESPONSE"))

(in-package "ROS")





(defclass jsk_interactive_marker::GetTransformableMarkerExistenceRequest
  :super ros::object
  :slots (_target_name ))

(defmethod jsk_interactive_marker::GetTransformableMarkerExistenceRequest
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

(defclass jsk_interactive_marker::GetTransformableMarkerExistenceResponse
  :super ros::object
  :slots (_existence ))

(defmethod jsk_interactive_marker::GetTransformableMarkerExistenceResponse
  (:init
   (&key
    ((:existence __existence) nil)
    )
   (send-super :init)
   (setq _existence __existence)
   self)
  (:existence
   (&optional __existence)
   (if __existence (setq _existence __existence)) _existence)
  (:serialization-length
   ()
   (+
    ;; bool _existence
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _existence
       (if _existence (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _existence
     (setq _existence (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass jsk_interactive_marker::GetTransformableMarkerExistence
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::GetTransformableMarkerExistence :md5sum-) "d5188923e69738836fa60c2cc3c5aa81")
(setf (get jsk_interactive_marker::GetTransformableMarkerExistence :datatype-) "jsk_interactive_marker/GetTransformableMarkerExistence")
(setf (get jsk_interactive_marker::GetTransformableMarkerExistence :request) jsk_interactive_marker::GetTransformableMarkerExistenceRequest)
(setf (get jsk_interactive_marker::GetTransformableMarkerExistence :response) jsk_interactive_marker::GetTransformableMarkerExistenceResponse)

(defmethod jsk_interactive_marker::GetTransformableMarkerExistenceRequest
  (:response () (instance jsk_interactive_marker::GetTransformableMarkerExistenceResponse :init)))

(setf (get jsk_interactive_marker::GetTransformableMarkerExistenceRequest :md5sum-) "d5188923e69738836fa60c2cc3c5aa81")
(setf (get jsk_interactive_marker::GetTransformableMarkerExistenceRequest :datatype-) "jsk_interactive_marker/GetTransformableMarkerExistenceRequest")
(setf (get jsk_interactive_marker::GetTransformableMarkerExistenceRequest :definition-)
      "string target_name
---
bool existence

")

(setf (get jsk_interactive_marker::GetTransformableMarkerExistenceResponse :md5sum-) "d5188923e69738836fa60c2cc3c5aa81")
(setf (get jsk_interactive_marker::GetTransformableMarkerExistenceResponse :datatype-) "jsk_interactive_marker/GetTransformableMarkerExistenceResponse")
(setf (get jsk_interactive_marker::GetTransformableMarkerExistenceResponse :definition-)
      "string target_name
---
bool existence

")



(provide :jsk_interactive_marker/GetTransformableMarkerExistence "d5188923e69738836fa60c2cc3c5aa81")


