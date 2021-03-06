;; Auto-generated. Do not edit!


(when (boundp 'test_rosmaster::TVals)
  (if (not (find-package "TEST_ROSMASTER"))
    (make-package "TEST_ROSMASTER"))
  (shadow 'TVals (find-package "TEST_ROSMASTER")))
(unless (find-package "TEST_ROSMASTER::TVALS")
  (make-package "TEST_ROSMASTER::TVALS"))

(in-package "ROS")
;;//! \htmlinclude TVals.msg.html


(defclass test_rosmaster::TVals
  :super ros::object
  :slots (_t _d ))

(defmethod test_rosmaster::TVals
  (:init
   (&key
    ((:t __t) (instance ros::time :init))
    ((:d __d) (instance ros::time :init))
    )
   (send-super :init)
   (setq _t __t)
   (setq _d __d)
   self)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; time _t
    8
    ;; duration _d
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _t
       (write-long (send _t :sec) s) (write-long (send _t :nsec) s)
     ;; duration _d
       (write-long (send _d :sec) s) (write-long (send _d :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _t
     (send _t :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _d
     (send _d :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _d :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_rosmaster::TVals :md5sum-) "ae4d4f9600b9ab683a5dc9372c031758")
(setf (get test_rosmaster::TVals :datatype-) "test_rosmaster/TVals")
(setf (get test_rosmaster::TVals :definition-)
      "# for rostopic tests
time t
duration d

")



(provide :test_rosmaster/TVals "ae4d4f9600b9ab683a5dc9372c031758")


