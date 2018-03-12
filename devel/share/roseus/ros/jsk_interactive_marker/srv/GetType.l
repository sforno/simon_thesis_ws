;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::GetType)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'GetType (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTYPE")
  (make-package "JSK_INTERACTIVE_MARKER::GETTYPE"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTYPEREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::GETTYPEREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::GETTYPERESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::GETTYPERESPONSE"))

(in-package "ROS")





(defclass jsk_interactive_marker::GetTypeRequest
  :super ros::object
  :slots (_target_name ))

(defmethod jsk_interactive_marker::GetTypeRequest
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

(defclass jsk_interactive_marker::GetTypeResponse
  :super ros::object
  :slots (_type ))

(defmethod jsk_interactive_marker::GetTypeResponse
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jsk_interactive_marker::GetType
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::GetType :md5sum-) "b2d10d8ab8b4019e557c38345217093d")
(setf (get jsk_interactive_marker::GetType :datatype-) "jsk_interactive_marker/GetType")
(setf (get jsk_interactive_marker::GetType :request) jsk_interactive_marker::GetTypeRequest)
(setf (get jsk_interactive_marker::GetType :response) jsk_interactive_marker::GetTypeResponse)

(defmethod jsk_interactive_marker::GetTypeRequest
  (:response () (instance jsk_interactive_marker::GetTypeResponse :init)))

(setf (get jsk_interactive_marker::GetTypeRequest :md5sum-) "b2d10d8ab8b4019e557c38345217093d")
(setf (get jsk_interactive_marker::GetTypeRequest :datatype-) "jsk_interactive_marker/GetTypeRequest")
(setf (get jsk_interactive_marker::GetTypeRequest :definition-)
      "string target_name
---
int32 type

")

(setf (get jsk_interactive_marker::GetTypeResponse :md5sum-) "b2d10d8ab8b4019e557c38345217093d")
(setf (get jsk_interactive_marker::GetTypeResponse :datatype-) "jsk_interactive_marker/GetTypeResponse")
(setf (get jsk_interactive_marker::GetTypeResponse :definition-)
      "string target_name
---
int32 type

")



(provide :jsk_interactive_marker/GetType "b2d10d8ab8b4019e557c38345217093d")


