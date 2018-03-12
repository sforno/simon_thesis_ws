;; Auto-generated. Do not edit!


(when (boundp 'jsk_rviz_plugins::Screenshot)
  (if (not (find-package "JSK_RVIZ_PLUGINS"))
    (make-package "JSK_RVIZ_PLUGINS"))
  (shadow 'Screenshot (find-package "JSK_RVIZ_PLUGINS")))
(unless (find-package "JSK_RVIZ_PLUGINS::SCREENSHOT")
  (make-package "JSK_RVIZ_PLUGINS::SCREENSHOT"))
(unless (find-package "JSK_RVIZ_PLUGINS::SCREENSHOTREQUEST")
  (make-package "JSK_RVIZ_PLUGINS::SCREENSHOTREQUEST"))
(unless (find-package "JSK_RVIZ_PLUGINS::SCREENSHOTRESPONSE")
  (make-package "JSK_RVIZ_PLUGINS::SCREENSHOTRESPONSE"))

(in-package "ROS")





(defclass jsk_rviz_plugins::ScreenshotRequest
  :super ros::object
  :slots (_file_name ))

(defmethod jsk_rviz_plugins::ScreenshotRequest
  (:init
   (&key
    ((:file_name __file_name) "")
    )
   (send-super :init)
   (setq _file_name (string __file_name))
   self)
  (:file_name
   (&optional __file_name)
   (if __file_name (setq _file_name __file_name)) _file_name)
  (:serialization-length
   ()
   (+
    ;; string _file_name
    4 (length _file_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_name
       (write-long (length _file_name) s) (princ _file_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jsk_rviz_plugins::ScreenshotResponse
  :super ros::object
  :slots ())

(defmethod jsk_rviz_plugins::ScreenshotResponse
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

(defclass jsk_rviz_plugins::Screenshot
  :super ros::object
  :slots ())

(setf (get jsk_rviz_plugins::Screenshot :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get jsk_rviz_plugins::Screenshot :datatype-) "jsk_rviz_plugins/Screenshot")
(setf (get jsk_rviz_plugins::Screenshot :request) jsk_rviz_plugins::ScreenshotRequest)
(setf (get jsk_rviz_plugins::Screenshot :response) jsk_rviz_plugins::ScreenshotResponse)

(defmethod jsk_rviz_plugins::ScreenshotRequest
  (:response () (instance jsk_rviz_plugins::ScreenshotResponse :init)))

(setf (get jsk_rviz_plugins::ScreenshotRequest :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get jsk_rviz_plugins::ScreenshotRequest :datatype-) "jsk_rviz_plugins/ScreenshotRequest")
(setf (get jsk_rviz_plugins::ScreenshotRequest :definition-)
      "string file_name
---

")

(setf (get jsk_rviz_plugins::ScreenshotResponse :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get jsk_rviz_plugins::ScreenshotResponse :datatype-) "jsk_rviz_plugins/ScreenshotResponse")
(setf (get jsk_rviz_plugins::ScreenshotResponse :definition-)
      "string file_name
---

")



(provide :jsk_rviz_plugins/Screenshot "2415261c9605b9f38867ffbbe495fc04")


