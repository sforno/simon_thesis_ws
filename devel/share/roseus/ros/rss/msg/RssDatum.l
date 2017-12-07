;; Auto-generated. Do not edit!


(when (boundp 'rss::RssDatum)
  (if (not (find-package "RSS"))
    (make-package "RSS"))
  (shadow 'RssDatum (find-package "RSS")))
(unless (find-package "RSS::RSSDATUM")
  (make-package "RSS::RSSDATUM"))

(in-package "ROS")
;;//! \htmlinclude RssDatum.msg.html


(defclass rss::RssDatum
  :super ros::object
  :slots (_rss ))

(defmethod rss::RssDatum
  (:init
   (&key
    ((:rss __rss) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _rss __rss)
   self)
  (:rss
   (&optional __rss)
   (if __rss (setq _rss __rss)) _rss)
  (:serialization-length
   ()
   (+
    ;; int8[] _rss
    (* 1    (length _rss)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8[] _rss
     (write-long (length _rss) s)
     (dotimes (i (length _rss))
       (write-byte (elt _rss i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8[] _rss
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rss (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _rss i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _rss i) 127) (setf (elt _rss i) (- (elt _rss i) 256)))
     ))
   ;;
   self)
  )

(setf (get rss::RssDatum :md5sum-) "30f9e1fe2cc18569f41e9246340d3ec5")
(setf (get rss::RssDatum :datatype-) "rss/RssDatum")
(setf (get rss::RssDatum :definition-)
      "int8[]  rss

")



(provide :rss/RssDatum "30f9e1fe2cc18569f41e9246340d3ec5")


