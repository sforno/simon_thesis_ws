;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::SetHeuristic)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'SetHeuristic (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETHEURISTIC")
  (make-package "JSK_INTERACTIVE_MARKER::SETHEURISTIC"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETHEURISTICREQUEST")
  (make-package "JSK_INTERACTIVE_MARKER::SETHEURISTICREQUEST"))
(unless (find-package "JSK_INTERACTIVE_MARKER::SETHEURISTICRESPONSE")
  (make-package "JSK_INTERACTIVE_MARKER::SETHEURISTICRESPONSE"))

(in-package "ROS")





(defclass jsk_interactive_marker::SetHeuristicRequest
  :super ros::object
  :slots (_heuristic ))

(defmethod jsk_interactive_marker::SetHeuristicRequest
  (:init
   (&key
    ((:heuristic __heuristic) "")
    )
   (send-super :init)
   (setq _heuristic (string __heuristic))
   self)
  (:heuristic
   (&optional __heuristic)
   (if __heuristic (setq _heuristic __heuristic)) _heuristic)
  (:serialization-length
   ()
   (+
    ;; string _heuristic
    4 (length _heuristic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _heuristic
       (write-long (length _heuristic) s) (princ _heuristic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _heuristic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _heuristic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jsk_interactive_marker::SetHeuristicResponse
  :super ros::object
  :slots ())

(defmethod jsk_interactive_marker::SetHeuristicResponse
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

(defclass jsk_interactive_marker::SetHeuristic
  :super ros::object
  :slots ())

(setf (get jsk_interactive_marker::SetHeuristic :md5sum-) "96bf1327fac533122d937324246cbde4")
(setf (get jsk_interactive_marker::SetHeuristic :datatype-) "jsk_interactive_marker/SetHeuristic")
(setf (get jsk_interactive_marker::SetHeuristic :request) jsk_interactive_marker::SetHeuristicRequest)
(setf (get jsk_interactive_marker::SetHeuristic :response) jsk_interactive_marker::SetHeuristicResponse)

(defmethod jsk_interactive_marker::SetHeuristicRequest
  (:response () (instance jsk_interactive_marker::SetHeuristicResponse :init)))

(setf (get jsk_interactive_marker::SetHeuristicRequest :md5sum-) "96bf1327fac533122d937324246cbde4")
(setf (get jsk_interactive_marker::SetHeuristicRequest :datatype-) "jsk_interactive_marker/SetHeuristicRequest")
(setf (get jsk_interactive_marker::SetHeuristicRequest :definition-)
      "string heuristic
---

")

(setf (get jsk_interactive_marker::SetHeuristicResponse :md5sum-) "96bf1327fac533122d937324246cbde4")
(setf (get jsk_interactive_marker::SetHeuristicResponse :datatype-) "jsk_interactive_marker/SetHeuristicResponse")
(setf (get jsk_interactive_marker::SetHeuristicResponse :definition-)
      "string heuristic
---

")



(provide :jsk_interactive_marker/SetHeuristic "96bf1327fac533122d937324246cbde4")


