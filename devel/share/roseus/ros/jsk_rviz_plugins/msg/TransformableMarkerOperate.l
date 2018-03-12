;; Auto-generated. Do not edit!


(when (boundp 'jsk_rviz_plugins::TransformableMarkerOperate)
  (if (not (find-package "JSK_RVIZ_PLUGINS"))
    (make-package "JSK_RVIZ_PLUGINS"))
  (shadow 'TransformableMarkerOperate (find-package "JSK_RVIZ_PLUGINS")))
(unless (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE")
  (make-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))

(in-package "ROS")
;;//! \htmlinclude TransformableMarkerOperate.msg.html


(intern "*BOX*" (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(shadow '*BOX* (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(defconstant jsk_rviz_plugins::TransformableMarkerOperate::*BOX* 0)
(intern "*CYLINDER*" (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(shadow '*CYLINDER* (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(defconstant jsk_rviz_plugins::TransformableMarkerOperate::*CYLINDER* 1)
(intern "*TORUS*" (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(shadow '*TORUS* (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(defconstant jsk_rviz_plugins::TransformableMarkerOperate::*TORUS* 2)
(intern "*MESH_RESOURCE*" (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(shadow '*MESH_RESOURCE* (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(defconstant jsk_rviz_plugins::TransformableMarkerOperate::*MESH_RESOURCE* 3)
(intern "*INSERT*" (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(shadow '*INSERT* (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(defconstant jsk_rviz_plugins::TransformableMarkerOperate::*INSERT* 0)
(intern "*ERASE*" (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(shadow '*ERASE* (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(defconstant jsk_rviz_plugins::TransformableMarkerOperate::*ERASE* 1)
(intern "*ERASEALL*" (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(shadow '*ERASEALL* (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(defconstant jsk_rviz_plugins::TransformableMarkerOperate::*ERASEALL* 2)
(intern "*ERASEFOCUS*" (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(shadow '*ERASEFOCUS* (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(defconstant jsk_rviz_plugins::TransformableMarkerOperate::*ERASEFOCUS* 3)
(intern "*COPY*" (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(shadow '*COPY* (find-package "JSK_RVIZ_PLUGINS::TRANSFORMABLEMARKEROPERATE"))
(defconstant jsk_rviz_plugins::TransformableMarkerOperate::*COPY* 4)
(defclass jsk_rviz_plugins::TransformableMarkerOperate
  :super ros::object
  :slots (_type _action _frame_id _name _description _mesh_resource _mesh_use_embedded_materials ))

(defmethod jsk_rviz_plugins::TransformableMarkerOperate
  (:init
   (&key
    ((:type __type) 0)
    ((:action __action) 0)
    ((:frame_id __frame_id) "")
    ((:name __name) "")
    ((:description __description) "")
    ((:mesh_resource __mesh_resource) "")
    ((:mesh_use_embedded_materials __mesh_use_embedded_materials) nil)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _action (round __action))
   (setq _frame_id (string __frame_id))
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _mesh_resource (string __mesh_resource))
   (setq _mesh_use_embedded_materials __mesh_use_embedded_materials)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:mesh_resource
   (&optional __mesh_resource)
   (if __mesh_resource (setq _mesh_resource __mesh_resource)) _mesh_resource)
  (:mesh_use_embedded_materials
   (&optional __mesh_use_embedded_materials)
   (if __mesh_use_embedded_materials (setq _mesh_use_embedded_materials __mesh_use_embedded_materials)) _mesh_use_embedded_materials)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ;; int32 _action
    4
    ;; string _frame_id
    4 (length _frame_id)
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ;; string _mesh_resource
    4 (length _mesh_resource)
    ;; bool _mesh_use_embedded_materials
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;; int32 _action
       (write-long _action s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _mesh_resource
       (write-long (length _mesh_resource) s) (princ _mesh_resource s)
     ;; bool _mesh_use_embedded_materials
       (if _mesh_use_embedded_materials (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mesh_resource
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mesh_resource (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _mesh_use_embedded_materials
     (setq _mesh_use_embedded_materials (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get jsk_rviz_plugins::TransformableMarkerOperate :md5sum-) "3f5042567d7e11634fa94e4b5452169c")
(setf (get jsk_rviz_plugins::TransformableMarkerOperate :datatype-) "jsk_rviz_plugins/TransformableMarkerOperate")
(setf (get jsk_rviz_plugins::TransformableMarkerOperate :definition-)
      "uint8 BOX=0
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
bool mesh_use_embedded_materials
")



(provide :jsk_rviz_plugins/TransformableMarkerOperate "3f5042567d7e11634fa94e4b5452169c")


