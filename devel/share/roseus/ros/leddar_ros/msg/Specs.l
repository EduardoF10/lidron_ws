;; Auto-generated. Do not edit!


(when (boundp 'leddar_ros::Specs)
  (if (not (find-package "LEDDAR_ROS"))
    (make-package "LEDDAR_ROS"))
  (shadow 'Specs (find-package "LEDDAR_ROS")))
(unless (find-package "LEDDAR_ROS::SPECS")
  (make-package "LEDDAR_ROS::SPECS"))

(in-package "ROS")
;;//! \htmlinclude Specs.msg.html


(defclass leddar_ros::Specs
  :super ros::object
  :slots (_h _v _h_fov _v_fov ))

(defmethod leddar_ros::Specs
  (:init
   (&key
    ((:h __h) 0)
    ((:v __v) 0)
    ((:h_fov __h_fov) 0.0)
    ((:v_fov __v_fov) 0.0)
    )
   (send-super :init)
   (setq _h (round __h))
   (setq _v (round __v))
   (setq _h_fov (float __h_fov))
   (setq _v_fov (float __v_fov))
   self)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:h_fov
   (&optional __h_fov)
   (if __h_fov (setq _h_fov __h_fov)) _h_fov)
  (:v_fov
   (&optional __v_fov)
   (if __v_fov (setq _v_fov __v_fov)) _v_fov)
  (:serialization-length
   ()
   (+
    ;; uint32 _h
    4
    ;; uint32 _v
    4
    ;; float32 _h_fov
    4
    ;; float32 _v_fov
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _h
       (write-long _h s)
     ;; uint32 _v
       (write-long _v s)
     ;; float32 _h_fov
       (sys::poke _h_fov (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_fov
       (sys::poke _v_fov (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _h
     (setq _h (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _v
     (setq _v (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _h_fov
     (setq _h_fov (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_fov
     (setq _v_fov (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get leddar_ros::Specs :md5sum-) "7a6f0e497ec5e66f57cae8a1a9782c91")
(setf (get leddar_ros::Specs :datatype-) "leddar_ros/Specs")
(setf (get leddar_ros::Specs :definition-)
      "#Channels are organized in a row-major, top-down fashion
uint32 h #horizontal resolution
uint32 v #vertical resolution

# Fiel of Views in degrees
float32 h_fov #horizontal fov
float32 v_fov #vertical fov

")



(provide :leddar_ros/Specs "7a6f0e497ec5e66f57cae8a1a9782c91")


