;; Auto-generated. Do not edit!


(when (boundp 'jsk_rviz_plugins::RequestMarkerOperate)
  (if (not (find-package "JSK_RVIZ_PLUGINS"))
    (make-package "JSK_RVIZ_PLUGINS"))
  (shadow 'RequestMarkerOperate (find-package "JSK_RVIZ_PLUGINS")))
(unless (find-package "JSK_RVIZ_PLUGINS::REQUESTMARKEROPERATE")
  (make-package "JSK_RVIZ_PLUGINS::REQUESTMARKEROPERATE"))
(unless (find-package "JSK_RVIZ_PLUGINS::REQUESTMARKEROPERATEREQUEST")
  (make-package "JSK_RVIZ_PLUGINS::REQUESTMARKEROPERATEREQUEST"))
(unless (find-package "JSK_RVIZ_PLUGINS::REQUESTMARKEROPERATERESPONSE")
  (make-package "JSK_RVIZ_PLUGINS::REQUESTMARKEROPERATERESPONSE"))

(in-package "ROS")





(defclass jsk_rviz_plugins::RequestMarkerOperateRequest
  :super ros::object
  :slots (_operate ))

(defmethod jsk_rviz_plugins::RequestMarkerOperateRequest
  (:init
   (&key
    ((:operate __operate) (instance jsk_rviz_plugins::TransformableMarkerOperate :init))
    )
   (send-super :init)
   (setq _operate __operate)
   self)
  (:operate
   (&rest __operate)
   (if (keywordp (car __operate))
       (send* _operate __operate)
     (progn
       (if __operate (setq _operate (car __operate)))
       _operate)))
  (:serialization-length
   ()
   (+
    ;; jsk_rviz_plugins/TransformableMarkerOperate _operate
    (send _operate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jsk_rviz_plugins/TransformableMarkerOperate _operate
       (send _operate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jsk_rviz_plugins/TransformableMarkerOperate _operate
     (send _operate :deserialize buf ptr-) (incf ptr- (send _operate :serialization-length))
   ;;
   self)
  )

(defclass jsk_rviz_plugins::RequestMarkerOperateResponse
  :super ros::object
  :slots ())

(defmethod jsk_rviz_plugins::RequestMarkerOperateResponse
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

(defclass jsk_rviz_plugins::RequestMarkerOperate
  :super ros::object
  :slots ())

(setf (get jsk_rviz_plugins::RequestMarkerOperate :md5sum-) "5d5e6dca1cfed7e0be1a8c17221d0619")
(setf (get jsk_rviz_plugins::RequestMarkerOperate :datatype-) "jsk_rviz_plugins/RequestMarkerOperate")
(setf (get jsk_rviz_plugins::RequestMarkerOperate :request) jsk_rviz_plugins::RequestMarkerOperateRequest)
(setf (get jsk_rviz_plugins::RequestMarkerOperate :response) jsk_rviz_plugins::RequestMarkerOperateResponse)

(defmethod jsk_rviz_plugins::RequestMarkerOperateRequest
  (:response () (instance jsk_rviz_plugins::RequestMarkerOperateResponse :init)))

(setf (get jsk_rviz_plugins::RequestMarkerOperateRequest :md5sum-) "5d5e6dca1cfed7e0be1a8c17221d0619")
(setf (get jsk_rviz_plugins::RequestMarkerOperateRequest :datatype-) "jsk_rviz_plugins/RequestMarkerOperateRequest")
(setf (get jsk_rviz_plugins::RequestMarkerOperateRequest :definition-)
      "jsk_rviz_plugins/TransformableMarkerOperate operate

================================================================================
MSG: jsk_rviz_plugins/TransformableMarkerOperate
uint8 BOX=0
uint8 CYLINDER=1
uint8 TORUS=2
uint8 MESH_RESOURCE=3

uint8 INSERT=0
uint8 ERASE=1
uint8 ERASEALL=2
uint8 ERASEFOCUS=3
uint8 COPY=4

int32 type
int32 action
string frame_id
string name
string description
string mesh_resource
---

")

(setf (get jsk_rviz_plugins::RequestMarkerOperateResponse :md5sum-) "5d5e6dca1cfed7e0be1a8c17221d0619")
(setf (get jsk_rviz_plugins::RequestMarkerOperateResponse :datatype-) "jsk_rviz_plugins/RequestMarkerOperateResponse")
(setf (get jsk_rviz_plugins::RequestMarkerOperateResponse :definition-)
      "jsk_rviz_plugins/TransformableMarkerOperate operate

================================================================================
MSG: jsk_rviz_plugins/TransformableMarkerOperate
uint8 BOX=0
uint8 CYLINDER=1
uint8 TORUS=2
uint8 MESH_RESOURCE=3

uint8 INSERT=0
uint8 ERASE=1
uint8 ERASEALL=2
uint8 ERASEFOCUS=3
uint8 COPY=4

int32 type
int32 action
string frame_id
string name
string description
string mesh_resource
---

")



(provide :jsk_rviz_plugins/RequestMarkerOperate "5d5e6dca1cfed7e0be1a8c17221d0619")


