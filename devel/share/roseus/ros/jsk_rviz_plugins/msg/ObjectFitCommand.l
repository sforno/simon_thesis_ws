;; Auto-generated. Do not edit!


(when (boundp 'jsk_rviz_plugins::ObjectFitCommand)
  (if (not (find-package "JSK_RVIZ_PLUGINS"))
    (make-package "JSK_RVIZ_PLUGINS"))
  (shadow 'ObjectFitCommand (find-package "JSK_RVIZ_PLUGINS")))
(unless (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND")
  (make-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ObjectFitCommand.msg.html


(intern "*FIT*" (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(shadow '*FIT* (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(defconstant jsk_rviz_plugins::ObjectFitCommand::*FIT* 0)
(intern "*NEAR*" (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(shadow '*NEAR* (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(defconstant jsk_rviz_plugins::ObjectFitCommand::*NEAR* 1)
(intern "*OTHER*" (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(shadow '*OTHER* (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(defconstant jsk_rviz_plugins::ObjectFitCommand::*OTHER* 2)
(intern "*REVERSE_FIT*" (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(shadow '*REVERSE_FIT* (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(defconstant jsk_rviz_plugins::ObjectFitCommand::*REVERSE_FIT* 3)
(intern "*REVERSE_NEAR*" (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(shadow '*REVERSE_NEAR* (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(defconstant jsk_rviz_plugins::ObjectFitCommand::*REVERSE_NEAR* 4)
(intern "*REVERSE_OTHER*" (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(shadow '*REVERSE_OTHER* (find-package "JSK_RVIZ_PLUGINS::OBJECTFITCOMMAND"))
(defconstant jsk_rviz_plugins::ObjectFitCommand::*REVERSE_OTHER* 5)
(defclass jsk_rviz_plugins::ObjectFitCommand
  :super ros::object
  :slots (_command ))

(defmethod jsk_rviz_plugins::ObjectFitCommand
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; int8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _command 127) (setq _command (- _command 256)))
   ;;
   self)
  )

(setf (get jsk_rviz_plugins::ObjectFitCommand :md5sum-) "aaf37eac6a6717d09d438978a4117776")
(setf (get jsk_rviz_plugins::ObjectFitCommand :datatype-) "jsk_rviz_plugins/ObjectFitCommand")
(setf (get jsk_rviz_plugins::ObjectFitCommand :definition-)
      "uint8 FIT=0
uint8 NEAR=1
uint8 OTHER=2
uint8 REVERSE_FIT=3
uint8 REVERSE_NEAR=4
uint8 REVERSE_OTHER=5

int8 command

")



(provide :jsk_rviz_plugins/ObjectFitCommand "aaf37eac6a6717d09d438978a4117776")


