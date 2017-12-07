;; Auto-generated. Do not edit!


(when (boundp 'rss::ProbArray)
  (if (not (find-package "RSS"))
    (make-package "RSS"))
  (shadow 'ProbArray (find-package "RSS")))
(unless (find-package "RSS::PROBARRAY")
  (make-package "RSS::PROBARRAY"))

(in-package "ROS")
;;//! \htmlinclude ProbArray.msg.html


(defclass rss::ProbArray
  :super ros::object
  :slots (_params _prob ))

(defmethod rss::ProbArray
  (:init
   (&key
    ((:params __params) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:prob __prob) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _params __params)
   (setq _prob __prob)
   self)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:serialization-length
   ()
   (+
    ;; float32[] _params
    (* 4    (length _params)) 4
    ;; float32[] _prob
    (* 4    (length _prob)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _params
     (write-long (length _params) s)
     (dotimes (i (length _params))
       (sys::poke (elt _params i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _prob
     (write-long (length _prob) s)
     (dotimes (i (length _prob))
       (sys::poke (elt _prob i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _params i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _prob
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prob (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _prob i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rss::ProbArray :md5sum-) "5f31eb659a100c0d2cd41537252e23a4")
(setf (get rss::ProbArray :datatype-) "rss/ProbArray")
(setf (get rss::ProbArray :definition-)
      "float32[]   params
float32[]   prob

")



(provide :rss/ProbArray "5f31eb659a100c0d2cd41537252e23a4")


