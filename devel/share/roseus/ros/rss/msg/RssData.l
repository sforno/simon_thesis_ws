;; Auto-generated. Do not edit!


(when (boundp 'rss::RssData)
  (if (not (find-package "RSS"))
    (make-package "RSS"))
  (shadow 'RssData (find-package "RSS")))
(unless (find-package "RSS::RSSDATA")
  (make-package "RSS::RSSDATA"))

(in-package "ROS")
;;//! \htmlinclude RssData.msg.html


(defclass rss::RssData
  :super ros::object
  :slots (_time_start_ns _duration_ms _mac_address _freq _data ))

(defmethod rss::RssData
  (:init
   (&key
    ((:time_start_ns __time_start_ns) 0)
    ((:duration_ms __duration_ms) 0)
    ((:mac_address __mac_address) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:freq __freq) (make-array 0 :initial-element 0 :element-type :integer))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance rss::RssDatum :init) r)) r))
    )
   (send-super :init)
   (setq _time_start_ns (round __time_start_ns))
   (setq _duration_ms (round __duration_ms))
   (setq _mac_address __mac_address)
   (setq _freq __freq)
   (setq _data __data)
   self)
  (:time_start_ns
   (&optional __time_start_ns)
   (if __time_start_ns (setq _time_start_ns __time_start_ns)) _time_start_ns)
  (:duration_ms
   (&optional __duration_ms)
   (if __duration_ms (setq _duration_ms __duration_ms)) _duration_ms)
  (:mac_address
   (&optional __mac_address)
   (if __mac_address (setq _mac_address __mac_address)) _mac_address)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; uint64 _time_start_ns
    8
    ;; uint32 _duration_ms
    4
    ;; string[] _mac_address
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _mac_address)) 4
    ;; int16[] _freq
    (* 2    (length _freq)) 4
    ;; rss/RssDatum[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _time_start_ns
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_start_ns (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_start_ns) (= (length (_time_start_ns . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_start_ns . bv) 0) 0) s)
              (write-long (ash (elt (_time_start_ns . bv) 1) -1) s))
             ((and (class _time_start_ns) (= (length (_time_start_ns . bv)) 1)) ;; big1
              (write-long (elt (_time_start_ns . bv) 0) s)
              (write-long (if (>= _time_start_ns 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_start_ns s)(write-long (if (>= _time_start_ns 0) 0 #xffffffff) s)))
     ;; uint32 _duration_ms
       (write-long _duration_ms s)
     ;; string[] _mac_address
     (write-long (length _mac_address) s)
     (dolist (elem _mac_address)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int16[] _freq
     (write-long (length _freq) s)
     (dotimes (i (length _freq))
       (write-word (elt _freq i) s)
       )
     ;; rss/RssDatum[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _time_start_ns
     
#+(or :alpha :irix6 :x86_64)
      (setf _time_start_ns (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_start_ns (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _duration_ms
     (setq _duration_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _mac_address
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mac_address (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _mac_address i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int16[] _freq
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _freq (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _freq i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; rss/RssDatum[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance rss::RssDatum :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rss::RssData :md5sum-) "98edea83815c1c0eecd2ae4d690d4548")
(setf (get rss::RssData :datatype-) "rss/RssData")
(setf (get rss::RssData :definition-)
      "uint64      time_start_ns
uint32      duration_ms
string[]    mac_address
int16[]     freq
RssDatum[]  data

================================================================================
MSG: rss/RssDatum
int8[]  rss

")



(provide :rss/RssData "98edea83815c1c0eecd2ae4d690d4548")


