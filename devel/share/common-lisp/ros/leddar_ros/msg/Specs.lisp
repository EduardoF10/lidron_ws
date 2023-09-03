; Auto-generated. Do not edit!


(cl:in-package leddar_ros-msg)


;//! \htmlinclude Specs.msg.html

(cl:defclass <Specs> (roslisp-msg-protocol:ros-message)
  ((h
    :reader h
    :initarg :h
    :type cl:integer
    :initform 0)
   (v
    :reader v
    :initarg :v
    :type cl:integer
    :initform 0)
   (h_fov
    :reader h_fov
    :initarg :h_fov
    :type cl:float
    :initform 0.0)
   (v_fov
    :reader v_fov
    :initarg :v_fov
    :type cl:float
    :initform 0.0))
)

(cl:defclass Specs (<Specs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Specs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Specs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leddar_ros-msg:<Specs> is deprecated: use leddar_ros-msg:Specs instead.")))

(cl:ensure-generic-function 'h-val :lambda-list '(m))
(cl:defmethod h-val ((m <Specs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leddar_ros-msg:h-val is deprecated.  Use leddar_ros-msg:h instead.")
  (h m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <Specs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leddar_ros-msg:v-val is deprecated.  Use leddar_ros-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'h_fov-val :lambda-list '(m))
(cl:defmethod h_fov-val ((m <Specs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leddar_ros-msg:h_fov-val is deprecated.  Use leddar_ros-msg:h_fov instead.")
  (h_fov m))

(cl:ensure-generic-function 'v_fov-val :lambda-list '(m))
(cl:defmethod v_fov-val ((m <Specs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leddar_ros-msg:v_fov-val is deprecated.  Use leddar_ros-msg:v_fov instead.")
  (v_fov m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Specs>) ostream)
  "Serializes a message object of type '<Specs>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'v)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'v)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'v)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'v)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'h_fov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_fov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Specs>) istream)
  "Deserializes a message object of type '<Specs>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'v)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'v)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'v)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'v)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'h_fov) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_fov) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Specs>)))
  "Returns string type for a message object of type '<Specs>"
  "leddar_ros/Specs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Specs)))
  "Returns string type for a message object of type 'Specs"
  "leddar_ros/Specs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Specs>)))
  "Returns md5sum for a message object of type '<Specs>"
  "7a6f0e497ec5e66f57cae8a1a9782c91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Specs)))
  "Returns md5sum for a message object of type 'Specs"
  "7a6f0e497ec5e66f57cae8a1a9782c91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Specs>)))
  "Returns full string definition for message of type '<Specs>"
  (cl:format cl:nil "#Channels are organized in a row-major, top-down fashion~%uint32 h #horizontal resolution~%uint32 v #vertical resolution~%~%# Fiel of Views in degrees~%float32 h_fov #horizontal fov~%float32 v_fov #vertical fov~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Specs)))
  "Returns full string definition for message of type 'Specs"
  (cl:format cl:nil "#Channels are organized in a row-major, top-down fashion~%uint32 h #horizontal resolution~%uint32 v #vertical resolution~%~%# Fiel of Views in degrees~%float32 h_fov #horizontal fov~%float32 v_fov #vertical fov~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Specs>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Specs>))
  "Converts a ROS message object to a list"
  (cl:list 'Specs
    (cl:cons ':h (h msg))
    (cl:cons ':v (v msg))
    (cl:cons ':h_fov (h_fov msg))
    (cl:cons ':v_fov (v_fov msg))
))
