;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::JointTrajectoryPointWithType)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'JointTrajectoryPointWithType (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE")
  (make-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE"))

(in-package "ROS")
;;//! \htmlinclude JointTrajectoryPointWithType.msg.html


(intern "*JOINT_INTERPOLATION*" (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE"))
(shadow '*JOINT_INTERPOLATION* (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE"))
(defconstant jsk_interactive_marker::JointTrajectoryPointWithType::*JOINT_INTERPOLATION* 0)
(intern "*LINEAR_INTERPOLATION*" (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE"))
(shadow '*LINEAR_INTERPOLATION* (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE"))
(defconstant jsk_interactive_marker::JointTrajectoryPointWithType::*LINEAR_INTERPOLATION* 1)
(intern "*COLLISION_AVOIDANCE*" (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE"))
(shadow '*COLLISION_AVOIDANCE* (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE"))
(defconstant jsk_interactive_marker::JointTrajectoryPointWithType::*COLLISION_AVOIDANCE* 2)
(intern "*CLOSE_HAND*" (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE"))
(shadow '*CLOSE_HAND* (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE"))
(defconstant jsk_interactive_marker::JointTrajectoryPointWithType::*CLOSE_HAND* 10)
(intern "*OPEN_HAND*" (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE"))
(shadow '*OPEN_HAND* (find-package "JSK_INTERACTIVE_MARKER::JOINTTRAJECTORYPOINTWITHTYPE"))
(defconstant jsk_interactive_marker::JointTrajectoryPointWithType::*OPEN_HAND* 11)
(defclass jsk_interactive_marker::JointTrajectoryPointWithType
  :super ros::object
  :slots (_type _args _wait _positions _velocities _accelerations _effort _time_from_start ))

(defmethod jsk_interactive_marker::JointTrajectoryPointWithType
  (:init
   (&key
    ((:type __type) 0)
    ((:args __args) "")
    ((:wait __wait) nil)
    ((:positions __positions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocities __velocities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:accelerations __accelerations) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:time_from_start __time_from_start) (instance ros::time :init))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _args (string __args))
   (setq _wait __wait)
   (setq _positions __positions)
   (setq _velocities __velocities)
   (setq _accelerations __accelerations)
   (setq _effort __effort)
   (setq _time_from_start __time_from_start)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:args
   (&optional __args)
   (if __args (setq _args __args)) _args)
  (:wait
   (&optional __wait)
   (if __wait (setq _wait __wait)) _wait)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:velocities
   (&optional __velocities)
   (if __velocities (setq _velocities __velocities)) _velocities)
  (:accelerations
   (&optional __accelerations)
   (if __accelerations (setq _accelerations __accelerations)) _accelerations)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:time_from_start
   (&optional __time_from_start)
   (if __time_from_start (setq _time_from_start __time_from_start)) _time_from_start)
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ;; string _args
    4 (length _args)
    ;; bool _wait
    1
    ;; float64[] _positions
    (* 8    (length _positions)) 4
    ;; float64[] _velocities
    (* 8    (length _velocities)) 4
    ;; float64[] _accelerations
    (* 8    (length _accelerations)) 4
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ;; duration _time_from_start
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;; string _args
       (write-long (length _args) s) (princ _args s)
     ;; bool _wait
       (if _wait (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocities
     (write-long (length _velocities) s)
     (dotimes (i (length _velocities))
       (sys::poke (elt _velocities i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _accelerations
     (write-long (length _accelerations) s)
     (dotimes (i (length _accelerations))
       (sys::poke (elt _accelerations i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; duration _time_from_start
       (write-long (send _time_from_start :sec) s) (write-long (send _time_from_start :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; string _args
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _args (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _wait
     (setq _wait (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocities i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _accelerations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accelerations (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _accelerations i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; duration _time_from_start
     (send _time_from_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_from_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jsk_interactive_marker::JointTrajectoryPointWithType :md5sum-) "990bd6a1d9e03cc634e576f569783816")
(setf (get jsk_interactive_marker::JointTrajectoryPointWithType :datatype-) "jsk_interactive_marker/JointTrajectoryPointWithType")
(setf (get jsk_interactive_marker::JointTrajectoryPointWithType :definition-)
      "uint8 JOINT_INTERPOLATION=0
uint8 LINEAR_INTERPOLATION=1
uint8 COLLISION_AVOIDANCE=2

uint8 CLOSE_HAND=10
uint8 OPEN_HAND=11

int8 type
string args
bool wait

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

")



(provide :jsk_interactive_marker/JointTrajectoryPointWithType "990bd6a1d9e03cc634e576f569783816")


