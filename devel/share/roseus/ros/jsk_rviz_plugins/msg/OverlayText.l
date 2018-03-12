;; Auto-generated. Do not edit!


(when (boundp 'jsk_rviz_plugins::OverlayText)
  (if (not (find-package "JSK_RVIZ_PLUGINS"))
    (make-package "JSK_RVIZ_PLUGINS"))
  (shadow 'OverlayText (find-package "JSK_RVIZ_PLUGINS")))
(unless (find-package "JSK_RVIZ_PLUGINS::OVERLAYTEXT")
  (make-package "JSK_RVIZ_PLUGINS::OVERLAYTEXT"))

(in-package "ROS")
;;//! \htmlinclude OverlayText.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ADD*" (find-package "JSK_RVIZ_PLUGINS::OVERLAYTEXT"))
(shadow '*ADD* (find-package "JSK_RVIZ_PLUGINS::OVERLAYTEXT"))
(defconstant jsk_rviz_plugins::OverlayText::*ADD* 0)
(intern "*DELETE*" (find-package "JSK_RVIZ_PLUGINS::OVERLAYTEXT"))
(shadow '*DELETE* (find-package "JSK_RVIZ_PLUGINS::OVERLAYTEXT"))
(defconstant jsk_rviz_plugins::OverlayText::*DELETE* 1)
(defclass jsk_rviz_plugins::OverlayText
  :super ros::object
  :slots (_action _width _height _left _top _bg_color _line_width _text_size _font _fg_color _text ))

(defmethod jsk_rviz_plugins::OverlayText
  (:init
   (&key
    ((:action __action) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    ((:left __left) 0)
    ((:top __top) 0)
    ((:bg_color __bg_color) (instance std_msgs::ColorRGBA :init))
    ((:line_width __line_width) 0)
    ((:text_size __text_size) 0.0)
    ((:font __font) "")
    ((:fg_color __fg_color) (instance std_msgs::ColorRGBA :init))
    ((:text __text) "")
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _left (round __left))
   (setq _top (round __top))
   (setq _bg_color __bg_color)
   (setq _line_width (round __line_width))
   (setq _text_size (float __text_size))
   (setq _font (string __font))
   (setq _fg_color __fg_color)
   (setq _text (string __text))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:top
   (&optional __top)
   (if __top (setq _top __top)) _top)
  (:bg_color
   (&rest __bg_color)
   (if (keywordp (car __bg_color))
       (send* _bg_color __bg_color)
     (progn
       (if __bg_color (setq _bg_color (car __bg_color)))
       _bg_color)))
  (:line_width
   (&optional __line_width)
   (if __line_width (setq _line_width __line_width)) _line_width)
  (:text_size
   (&optional __text_size)
   (if __text_size (setq _text_size __text_size)) _text_size)
  (:font
   (&optional __font)
   (if __font (setq _font __font)) _font)
  (:fg_color
   (&rest __fg_color)
   (if (keywordp (car __fg_color))
       (send* _fg_color __fg_color)
     (progn
       (if __fg_color (setq _fg_color (car __fg_color)))
       _fg_color)))
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; uint8 _action
    1
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _left
    4
    ;; int32 _top
    4
    ;; std_msgs/ColorRGBA _bg_color
    (send _bg_color :serialization-length)
    ;; int32 _line_width
    4
    ;; float32 _text_size
    4
    ;; string _font
    4 (length _font)
    ;; std_msgs/ColorRGBA _fg_color
    (send _fg_color :serialization-length)
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _action
       (write-byte _action s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _left
       (write-long _left s)
     ;; int32 _top
       (write-long _top s)
     ;; std_msgs/ColorRGBA _bg_color
       (send _bg_color :serialize s)
     ;; int32 _line_width
       (write-long _line_width s)
     ;; float32 _text_size
       (sys::poke _text_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _font
       (write-long (length _font) s) (princ _font s)
     ;; std_msgs/ColorRGBA _fg_color
       (send _fg_color :serialize s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _left
     (setq _left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _top
     (setq _top (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/ColorRGBA _bg_color
     (send _bg_color :deserialize buf ptr-) (incf ptr- (send _bg_color :serialization-length))
   ;; int32 _line_width
     (setq _line_width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _text_size
     (setq _text_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _font
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _font (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; std_msgs/ColorRGBA _fg_color
     (send _fg_color :deserialize buf ptr-) (incf ptr- (send _fg_color :serialization-length))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get jsk_rviz_plugins::OverlayText :md5sum-) "7efc1ed34881f913afcee6ba02aa1242")
(setf (get jsk_rviz_plugins::OverlayText :datatype-) "jsk_rviz_plugins/OverlayText")
(setf (get jsk_rviz_plugins::OverlayText :definition-)
      "uint8 ADD = 0
uint8 DELETE = 1

uint8 action

int32 width
int32 height
int32 left
int32 top
std_msgs/ColorRGBA bg_color

int32 line_width
float32 text_size
string font
std_msgs/ColorRGBA fg_color

string text

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :jsk_rviz_plugins/OverlayText "7efc1ed34881f913afcee6ba02aa1242")


