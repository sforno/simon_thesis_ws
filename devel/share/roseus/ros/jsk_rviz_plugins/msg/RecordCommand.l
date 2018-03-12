;; Auto-generated. Do not edit!


(when (boundp 'jsk_rviz_plugins::RecordCommand)
  (if (not (find-package "JSK_RVIZ_PLUGINS"))
    (make-package "JSK_RVIZ_PLUGINS"))
  (shadow 'RecordCommand (find-package "JSK_RVIZ_PLUGINS")))
(unless (find-package "JSK_RVIZ_PLUGINS::RECORDCOMMAND")
  (make-package "JSK_RVIZ_PLUGINS::RECORDCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude RecordCommand.msg.html


(intern "*RECORD*" (find-package "JSK_RVIZ_PLUGINS::RECORDCOMMAND"))
(shadow '*RECORD* (find-package "JSK_RVIZ_PLUGINS::RECORDCOMMAND"))
(defconstant jsk_rviz_plugins::RecordCommand::*RECORD* 0)
(intern "*RECORD_STOP*" (find-package "JSK_RVIZ_PLUGINS::RECORDCOMMAND"))
(shadow '*RECORD_STOP* (find-package "JSK_RVIZ_PLUGINS::RECORDCOMMAND"))
(defconstant jsk_rviz_plugins::RecordCommand::*RECORD_STOP* 1)
(intern "*PLAY*" (find-package "JSK_RVIZ_PLUGINS::RECORDCOMMAND"))
(shadow '*PLAY* (find-package "JSK_RVIZ_PLUGINS::RECORDCOMMAND"))
(defconstant jsk_rviz_plugins::RecordCommand::*PLAY* 2)
(defclass jsk_rviz_plugins::RecordCommand
  :super ros::object
  :slots (_command _target ))

(defmethod jsk_rviz_plugins::RecordCommand
  (:init
   (&key
    ((:command __command) 0)
    ((:target __target) "")
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _target (string __target))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:target
   (&optional __target)
   (if __target (setq _target __target)) _target)
  (:serialization-length
   ()
   (+
    ;; int8 _command
    1
    ;; string _target
    4 (length _target)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _command
       (write-byte _command s)
     ;; string _target
       (write-long (length _target) s) (princ _target s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _command 127) (setq _command (- _command 256)))
   ;; string _target
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get jsk_rviz_plugins::RecordCommand :md5sum-) "31931c62eab5500089183eef0161c139")
(setf (get jsk_rviz_plugins::RecordCommand :datatype-) "jsk_rviz_plugins/RecordCommand")
(setf (get jsk_rviz_plugins::RecordCommand :definition-)
      "uint8 RECORD=0
uint8 RECORD_STOP=1
uint8 PLAY=2

int8 command
string target
")



(provide :jsk_rviz_plugins/RecordCommand "31931c62eab5500089183eef0161c139")


