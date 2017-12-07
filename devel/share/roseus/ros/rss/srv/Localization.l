;; Auto-generated. Do not edit!


(when (boundp 'rss::Localization)
  (if (not (find-package "RSS"))
    (make-package "RSS"))
  (shadow 'Localization (find-package "RSS")))
(unless (find-package "RSS::LOCALIZATION")
  (make-package "RSS::LOCALIZATION"))
(unless (find-package "RSS::LOCALIZATIONREQUEST")
  (make-package "RSS::LOCALIZATIONREQUEST"))
(unless (find-package "RSS::LOCALIZATIONRESPONSE")
  (make-package "RSS::LOCALIZATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rss::LocalizationRequest
  :super ros::object
  :slots (_rss _nsamples _pose_array ))

(defmethod rss::LocalizationRequest
  (:init
   (&key
    ((:rss __rss) (let (r) (dotimes (i 0) (push (instance rss::RssData :init) r)) r))
    ((:nsamples __nsamples) 0)
    ((:pose_array __pose_array) (instance geometry_msgs::PoseArray :init))
    )
   (send-super :init)
   (setq _rss __rss)
   (setq _nsamples (round __nsamples))
   (setq _pose_array __pose_array)
   self)
  (:rss
   (&rest __rss)
   (if (keywordp (car __rss))
       (send* _rss __rss)
     (progn
       (if __rss (setq _rss (car __rss)))
       _rss)))
  (:nsamples
   (&optional __nsamples)
   (if __nsamples (setq _nsamples __nsamples)) _nsamples)
  (:pose_array
   (&rest __pose_array)
   (if (keywordp (car __pose_array))
       (send* _pose_array __pose_array)
     (progn
       (if __pose_array (setq _pose_array (car __pose_array)))
       _pose_array)))
  (:serialization-length
   ()
   (+
    ;; rss/RssData[] _rss
    (apply #'+ (send-all _rss :serialization-length)) 4
    ;; int64 _nsamples
    8
    ;; geometry_msgs/PoseArray _pose_array
    (send _pose_array :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rss/RssData[] _rss
     (write-long (length _rss) s)
     (dolist (elem _rss)
       (send elem :serialize s)
       )
     ;; int64 _nsamples
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _nsamples (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _nsamples) (= (length (_nsamples . bv)) 2)) ;; bignum
              (write-long (ash (elt (_nsamples . bv) 0) 0) s)
              (write-long (ash (elt (_nsamples . bv) 1) -1) s))
             ((and (class _nsamples) (= (length (_nsamples . bv)) 1)) ;; big1
              (write-long (elt (_nsamples . bv) 0) s)
              (write-long (if (>= _nsamples 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _nsamples s)(write-long (if (>= _nsamples 0) 0 #xffffffff) s)))
     ;; geometry_msgs/PoseArray _pose_array
       (send _pose_array :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rss/RssData[] _rss
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rss (let (r) (dotimes (i n) (push (instance rss::RssData :init) r)) r))
     (dolist (elem- _rss)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int64 _nsamples
#+(or :alpha :irix6 :x86_64)
      (setf _nsamples (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _nsamples (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/PoseArray _pose_array
     (send _pose_array :deserialize buf ptr-) (incf ptr- (send _pose_array :serialization-length))
   ;;
   self)
  )

(defclass rss::LocalizationResponse
  :super ros::object
  :slots (_pose_array _weights _prob_mesh ))

(defmethod rss::LocalizationResponse
  (:init
   (&key
    ((:pose_array __pose_array) (instance geometry_msgs::PoseArray :init))
    ((:weights __weights) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:prob_mesh __prob_mesh) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose_array __pose_array)
   (setq _weights __weights)
   (setq _prob_mesh __prob_mesh)
   self)
  (:pose_array
   (&rest __pose_array)
   (if (keywordp (car __pose_array))
       (send* _pose_array __pose_array)
     (progn
       (if __pose_array (setq _pose_array (car __pose_array)))
       _pose_array)))
  (:weights
   (&optional __weights)
   (if __weights (setq _weights __weights)) _weights)
  (:prob_mesh
   (&optional __prob_mesh)
   (if __prob_mesh (setq _prob_mesh __prob_mesh)) _prob_mesh)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _pose_array
    (send _pose_array :serialization-length)
    ;; float64[] _weights
    (* 8    (length _weights)) 4
    ;; float64[] _prob_mesh
    (* 8    (length _prob_mesh)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _pose_array
       (send _pose_array :serialize s)
     ;; float64[] _weights
     (write-long (length _weights) s)
     (dotimes (i (length _weights))
       (sys::poke (elt _weights i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _prob_mesh
     (write-long (length _prob_mesh) s)
     (dotimes (i (length _prob_mesh))
       (sys::poke (elt _prob_mesh i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _pose_array
     (send _pose_array :deserialize buf ptr-) (incf ptr- (send _pose_array :serialization-length))
   ;; float64[] _weights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _weights (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _weights i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _prob_mesh
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prob_mesh (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _prob_mesh i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass rss::Localization
  :super ros::object
  :slots ())

(setf (get rss::Localization :md5sum-) "657eb31c75cbeea4823f2ec9c2b4e987")
(setf (get rss::Localization :datatype-) "rss/Localization")
(setf (get rss::Localization :request) rss::LocalizationRequest)
(setf (get rss::Localization :response) rss::LocalizationResponse)

(defmethod rss::LocalizationRequest
  (:response () (instance rss::LocalizationResponse :init)))

(setf (get rss::LocalizationRequest :md5sum-) "657eb31c75cbeea4823f2ec9c2b4e987")
(setf (get rss::LocalizationRequest :datatype-) "rss/LocalizationRequest")
(setf (get rss::LocalizationRequest :definition-)
      "






RssData[] rss
int64 nsamples
geometry_msgs/PoseArray pose_array


================================================================================
MSG: rss/RssData
uint64      time_start_ns
uint32      duration_ms
string[]    mac_address
int16[]     freq
RssDatum[]  data

================================================================================
MSG: rss/RssDatum
int8[]  rss

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

geometry_msgs/PoseArray pose_array
float64[] weights
float64[] prob_mesh


================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get rss::LocalizationResponse :md5sum-) "657eb31c75cbeea4823f2ec9c2b4e987")
(setf (get rss::LocalizationResponse :datatype-) "rss/LocalizationResponse")
(setf (get rss::LocalizationResponse :definition-)
      "






RssData[] rss
int64 nsamples
geometry_msgs/PoseArray pose_array


================================================================================
MSG: rss/RssData
uint64      time_start_ns
uint32      duration_ms
string[]    mac_address
int16[]     freq
RssDatum[]  data

================================================================================
MSG: rss/RssDatum
int8[]  rss

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

geometry_msgs/PoseArray pose_array
float64[] weights
float64[] prob_mesh


================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :rss/Localization "657eb31c75cbeea4823f2ec9c2b4e987")


