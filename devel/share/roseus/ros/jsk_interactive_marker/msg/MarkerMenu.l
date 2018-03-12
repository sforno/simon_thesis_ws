;; Auto-generated. Do not edit!


(when (boundp 'jsk_interactive_marker::MarkerMenu)
  (if (not (find-package "JSK_INTERACTIVE_MARKER"))
    (make-package "JSK_INTERACTIVE_MARKER"))
  (shadow 'MarkerMenu (find-package "JSK_INTERACTIVE_MARKER")))
(unless (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU")
  (make-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))

(in-package "ROS")
;;//! \htmlinclude MarkerMenu.msg.html


(intern "*MOVE*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*MOVE* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*MOVE* 0)
(intern "*FORCE_MOVE*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*FORCE_MOVE* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*FORCE_MOVE* 1)
(intern "*SET_ORIGIN*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*SET_ORIGIN* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*SET_ORIGIN* 2)
(intern "*SET_ORIGIN_RHAND*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*SET_ORIGIN_RHAND* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*SET_ORIGIN_RHAND* 3)
(intern "*SET_ORIGIN_LHAND*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*SET_ORIGIN_LHAND* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*SET_ORIGIN_LHAND* 4)
(intern "*RESET_COORDS*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*RESET_COORDS* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*RESET_COORDS* 5)
(intern "*DELETE_FORCE*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*DELETE_FORCE* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*DELETE_FORCE* 6)
(intern "*PUBLISH_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*PUBLISH_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*PUBLISH_MARKER* 7)
(intern "*JOINT_MOVE*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*JOINT_MOVE* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*JOINT_MOVE* 8)
(intern "*RESET_JOINT*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*RESET_JOINT* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*RESET_JOINT* 9)
(intern "*SET_MOVE_RARM*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*SET_MOVE_RARM* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*SET_MOVE_RARM* 10)
(intern "*SET_MOVE_LARM*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*SET_MOVE_LARM* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*SET_MOVE_LARM* 11)
(intern "*SET_MOVE_ARMS*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*SET_MOVE_ARMS* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*SET_MOVE_ARMS* 12)
(intern "*MOVE_CONSTRAINT_T*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*MOVE_CONSTRAINT_T* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*MOVE_CONSTRAINT_T* 13)
(intern "*MOVE_CONSTRAINT_NIL*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*MOVE_CONSTRAINT_NIL* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*MOVE_CONSTRAINT_NIL* 14)
(intern "*IK_ROTATION_AXIS_T*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*IK_ROTATION_AXIS_T* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*IK_ROTATION_AXIS_T* 15)
(intern "*IK_ROTATION_AXIS_NIL*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*IK_ROTATION_AXIS_NIL* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*IK_ROTATION_AXIS_NIL* 16)
(intern "*USE_TORSO_T*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*USE_TORSO_T* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*USE_TORSO_T* 17)
(intern "*USE_TORSO_NIL*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*USE_TORSO_NIL* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*USE_TORSO_NIL* 18)
(intern "*USE_FULLBODY*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*USE_FULLBODY* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*USE_FULLBODY* 19)
(intern "*START_GRASP*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*START_GRASP* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*START_GRASP* 20)
(intern "*HARF_GRASP*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*HARF_GRASP* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*HARF_GRASP* 21)
(intern "*STOP_GRASP*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*STOP_GRASP* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*STOP_GRASP* 22)
(intern "*HEAD_TARGET_POINT*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*HEAD_TARGET_POINT* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*HEAD_TARGET_POINT* 30)
(intern "*LOOK_AUTO*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*LOOK_AUTO* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*LOOK_AUTO* 31)
(intern "*MANIP_MODE*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*MANIP_MODE* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*MANIP_MODE* 40)
(intern "*PICK*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*PICK* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*PICK* 41)
(intern "*TOUCHIT_EXEC*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*TOUCHIT_EXEC* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*TOUCHIT_EXEC* 42)
(intern "*TOUCHIT_PREV*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*TOUCHIT_PREV* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*TOUCHIT_PREV* 43)
(intern "*TOUCHIT_CANCEL*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*TOUCHIT_CANCEL* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*TOUCHIT_CANCEL* 44)
(intern "*LOOK_RARM*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*LOOK_RARM* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*LOOK_RARM* 45)
(intern "*LOOK_LARM*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*LOOK_LARM* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*LOOK_LARM* 46)
(intern "*PLAN*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*PLAN* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*PLAN* 50)
(intern "*EXECUTE*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*EXECUTE* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*EXECUTE* 51)
(intern "*PLAN_EXECUTE*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*PLAN_EXECUTE* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*PLAN_EXECUTE* 52)
(intern "*CANCEL_PLAN*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*CANCEL_PLAN* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*CANCEL_PLAN* 53)
(intern "*GENERAL*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*GENERAL* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*GENERAL* 0)
(intern "*HEAD_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*HEAD_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*HEAD_MARKER* 1)
(intern "*RHAND_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*RHAND_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*RHAND_MARKER* 2)
(intern "*LHAND_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*LHAND_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*LHAND_MARKER* 3)
(intern "*RLEG_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*RLEG_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*RLEG_MARKER* 4)
(intern "*LLEG_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*LLEG_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*LLEG_MARKER* 5)
(intern "*BASE_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*BASE_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*BASE_MARKER* 6)
(intern "*RFINGER_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*RFINGER_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*RFINGER_MARKER* 7)
(intern "*LFINGER_MARKER*" (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(shadow '*LFINGER_MARKER* (find-package "JSK_INTERACTIVE_MARKER::MARKERMENU"))
(defconstant jsk_interactive_marker::MarkerMenu::*LFINGER_MARKER* 8)
(defclass jsk_interactive_marker::MarkerMenu
  :super ros::object
  :slots (_menu _type _marker_name ))

(defmethod jsk_interactive_marker::MarkerMenu
  (:init
   (&key
    ((:menu __menu) 0)
    ((:type __type) 0)
    ((:marker_name __marker_name) "")
    )
   (send-super :init)
   (setq _menu (round __menu))
   (setq _type (round __type))
   (setq _marker_name (string __marker_name))
   self)
  (:menu
   (&optional __menu)
   (if __menu (setq _menu __menu)) _menu)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:marker_name
   (&optional __marker_name)
   (if __marker_name (setq _marker_name __marker_name)) _marker_name)
  (:serialization-length
   ()
   (+
    ;; int8 _menu
    1
    ;; int8 _type
    1
    ;; string _marker_name
    4 (length _marker_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _menu
       (write-byte _menu s)
     ;; int8 _type
       (write-byte _type s)
     ;; string _marker_name
       (write-long (length _marker_name) s) (princ _marker_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _menu
     (setq _menu (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _menu 127) (setq _menu (- _menu 256)))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; string _marker_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _marker_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get jsk_interactive_marker::MarkerMenu :md5sum-) "192d3b78eda584051c0d487463f7de74")
(setf (get jsk_interactive_marker::MarkerMenu :datatype-) "jsk_interactive_marker/MarkerMenu")
(setf (get jsk_interactive_marker::MarkerMenu :definition-)
      "uint8 MOVE=0
uint8 FORCE_MOVE=1
uint8 SET_ORIGIN=2
uint8 SET_ORIGIN_RHAND=3
uint8 SET_ORIGIN_LHAND=4
uint8 RESET_COORDS=5
uint8 DELETE_FORCE=6
uint8 PUBLISH_MARKER=7
uint8 JOINT_MOVE=8
uint8 RESET_JOINT=9

uint8 SET_MOVE_RARM=10
uint8 SET_MOVE_LARM=11
uint8 SET_MOVE_ARMS=12
uint8 MOVE_CONSTRAINT_T=13
uint8 MOVE_CONSTRAINT_NIL=14
uint8 IK_ROTATION_AXIS_T=15
uint8 IK_ROTATION_AXIS_NIL=16
uint8 USE_TORSO_T=17
uint8 USE_TORSO_NIL=18
int8 USE_FULLBODY=19


uint8 START_GRASP=20
uint8 HARF_GRASP=21
uint8 STOP_GRASP=22

uint8 HEAD_TARGET_POINT=30
uint8 LOOK_AUTO=31

uint8 MANIP_MODE=40
uint8 PICK=41
uint8 TOUCHIT_EXEC=42
uint8 TOUCHIT_PREV=43
uint8 TOUCHIT_CANCEL=44

uint8 LOOK_RARM=45
uint8 LOOK_LARM=46

uint8 PLAN=50
uint8 EXECUTE=51
uint8 PLAN_EXECUTE=52
uint8 CANCEL_PLAN=53

uint8 GENERAL=0
uint8 HEAD_MARKER=1
uint8 RHAND_MARKER=2
uint8 LHAND_MARKER=3
uint8 RLEG_MARKER=4
uint8 LLEG_MARKER=5
uint8 BASE_MARKER=6
uint8 RFINGER_MARKER=7
uint8 LFINGER_MARKER=8

int8 menu
int8 type
string marker_name
")



(provide :jsk_interactive_marker/MarkerMenu "192d3b78eda584051c0d487463f7de74")


