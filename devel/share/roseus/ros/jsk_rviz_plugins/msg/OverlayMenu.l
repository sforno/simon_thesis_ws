;; Auto-generated. Do not edit!


(when (boundp 'jsk_rviz_plugins::OverlayMenu)
  (if (not (find-package "JSK_RVIZ_PLUGINS"))
    (make-package "JSK_RVIZ_PLUGINS"))
  (shadow 'OverlayMenu (find-package "JSK_RVIZ_PLUGINS")))
(unless (find-package "JSK_RVIZ_PLUGINS::OVERLAYMENU")
  (make-package "JSK_RVIZ_PLUGINS::OVERLAYMENU"))

(in-package "ROS")
;;//! \htmlinclude OverlayMenu.msg.html


(intern "*ACTION_SELECT*" (find-package "JSK_RVIZ_PLUGINS::OVERLAYMENU"))
(shadow '*ACTION_SELECT* (find-package "JSK_RVIZ_PLUGINS::OVERLAYMENU"))
(defconstant jsk_rviz_plugins::OverlayMenu::*ACTION_SELECT* 0)
(intern "*ACTION_CLOSE*" (find-package "JSK_RVIZ_PLUGINS::OVERLAYMENU"))
(shadow '*ACTION_CLOSE* (find-package "JSK_RVIZ_PLUGINS::OVERLAYMENU"))
(defconstant jsk_rviz_plugins::OverlayMenu::*ACTION_CLOSE* 1)
(defclass jsk_rviz_plugins::OverlayMenu
  :super ros::object
  :slots (_action _current_index _menus _title ))

(defmethod jsk_rviz_plugins::OverlayMenu
  (:init
   (&key
    ((:action __action) 0)
    ((:current_index __current_index) 0)
    ((:menus __menus) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:title __title) "")
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _current_index (round __current_index))
   (setq _menus __menus)
   (setq _title (string __title))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:current_index
   (&optional __current_index)
   (if __current_index (setq _current_index __current_index)) _current_index)
  (:menus
   (&optional __menus)
   (if __menus (setq _menus __menus)) _menus)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:serialization-length
   ()
   (+
    ;; int32 _action
    4
    ;; uint32 _current_index
    4
    ;; string[] _menus
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _menus)) 4
    ;; string _title
    4 (length _title)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _action
       (write-long _action s)
     ;; uint32 _current_index
       (write-long _current_index s)
     ;; string[] _menus
     (write-long (length _menus) s)
     (dolist (elem _menus)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _current_index
     (setq _current_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _menus
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _menus (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _menus i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get jsk_rviz_plugins::OverlayMenu :md5sum-) "fed3c7e9788f7ee37908107a2597b619")
(setf (get jsk_rviz_plugins::OverlayMenu :datatype-) "jsk_rviz_plugins/OverlayMenu")
(setf (get jsk_rviz_plugins::OverlayMenu :definition-)
      "int32 ACTION_SELECT=0
int32 ACTION_CLOSE=1
int32 action
uint32 current_index
string[] menus
string title

")



(provide :jsk_rviz_plugins/OverlayMenu "fed3c7e9788f7ee37908107a2597b619")


