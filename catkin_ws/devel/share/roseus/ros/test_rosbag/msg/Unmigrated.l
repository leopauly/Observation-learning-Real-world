;; Auto-generated. Do not edit!


(when (boundp 'test_rosbag::Unmigrated)
  (if (not (find-package "TEST_ROSBAG"))
    (make-package "TEST_ROSBAG"))
  (shadow 'Unmigrated (find-package "TEST_ROSBAG")))
(unless (find-package "TEST_ROSBAG::UNMIGRATED")
  (make-package "TEST_ROSBAG::UNMIGRATED"))

(in-package "ROS")
;;//! \htmlinclude Unmigrated.msg.html


(defclass test_rosbag::Unmigrated
  :super ros::object
  :slots (_field1 _field2 _field3 ))

(defmethod test_rosbag::Unmigrated
  (:init
   (&key
    ((:field1 __field1) 0)
    ((:field2 __field2) "")
    ((:field3 __field3) 0.0)
    )
   (send-super :init)
   (setq _field1 (round __field1))
   (setq _field2 (string __field2))
   (setq _field3 (float __field3))
   self)
  (:field1
   (&optional __field1)
   (if __field1 (setq _field1 __field1)) _field1)
  (:field2
   (&optional __field2)
   (if __field2 (setq _field2 __field2)) _field2)
  (:field3
   (&optional __field3)
   (if __field3 (setq _field3 __field3)) _field3)
  (:serialization-length
   ()
   (+
    ;; int32 _field1
    4
    ;; string _field2
    4 (length _field2)
    ;; float32 _field3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _field1
       (write-long _field1 s)
     ;; string _field2
       (write-long (length _field2) s) (princ _field2 s)
     ;; float32 _field3
       (sys::poke _field3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _field1
     (setq _field1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _field2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _field2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _field3
     (setq _field3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_rosbag::Unmigrated :md5sum-) "b5d640967dccef2a24697ec4b8a571ec")
(setf (get test_rosbag::Unmigrated :datatype-) "test_rosbag/Unmigrated")
(setf (get test_rosbag::Unmigrated :definition-)
      "int32   field1 #12
string  field2 #\"uuiasjs\"
float32 field3 #61.7
")



(provide :test_rosbag/Unmigrated "b5d640967dccef2a24697ec4b8a571ec")


