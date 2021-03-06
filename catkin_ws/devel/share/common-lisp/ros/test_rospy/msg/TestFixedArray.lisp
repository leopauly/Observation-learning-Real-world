; Auto-generated. Do not edit!


(cl:in-package test_rospy-msg)


;//! \htmlinclude TestFixedArray.msg.html

(cl:defclass <TestFixedArray> (roslisp-msg-protocol:ros-message)
  ((f32_1
    :reader f32_1
    :initarg :f32_1
    :type (cl:vector cl:float)
   :initform (cl:make-array 1 :element-type 'cl:float :initial-element 0.0))
   (f32_3
    :reader f32_3
    :initarg :f32_3
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (f64_1
    :reader f64_1
    :initarg :f64_1
    :type (cl:vector cl:float)
   :initform (cl:make-array 1 :element-type 'cl:float :initial-element 0.0))
   (f64_3
    :reader f64_3
    :initarg :f64_3
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (i8_1
    :reader i8_1
    :initarg :i8_1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 1 :element-type 'cl:fixnum :initial-element 0))
   (i8_3
    :reader i8_3
    :initarg :i8_3
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (u8_1
    :reader u8_1
    :initarg :u8_1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 1 :element-type 'cl:fixnum :initial-element 0))
   (u8_3
    :reader u8_3
    :initarg :u8_3
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (i32_1
    :reader i32_1
    :initarg :i32_1
    :type (cl:vector cl:integer)
   :initform (cl:make-array 1 :element-type 'cl:integer :initial-element 0))
   (i32_3
    :reader i32_3
    :initarg :i32_3
    :type (cl:vector cl:integer)
   :initform (cl:make-array 3 :element-type 'cl:integer :initial-element 0))
   (u32_1
    :reader u32_1
    :initarg :u32_1
    :type (cl:vector cl:integer)
   :initform (cl:make-array 1 :element-type 'cl:integer :initial-element 0))
   (u32_3
    :reader u32_3
    :initarg :u32_3
    :type (cl:vector cl:integer)
   :initform (cl:make-array 3 :element-type 'cl:integer :initial-element 0))
   (s_1
    :reader s_1
    :initarg :s_1
    :type (cl:vector cl:string)
   :initform (cl:make-array 1 :element-type 'cl:string :initial-element ""))
   (s_3
    :reader s_3
    :initarg :s_3
    :type (cl:vector cl:string)
   :initform (cl:make-array 3 :element-type 'cl:string :initial-element ""))
   (b_1
    :reader b_1
    :initarg :b_1
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 1 :element-type 'cl:boolean :initial-element cl:nil))
   (b_3
    :reader b_3
    :initarg :b_3
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 3 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass TestFixedArray (<TestFixedArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestFixedArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestFixedArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-msg:<TestFixedArray> is deprecated: use test_rospy-msg:TestFixedArray instead.")))

(cl:ensure-generic-function 'f32_1-val :lambda-list '(m))
(cl:defmethod f32_1-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:f32_1-val is deprecated.  Use test_rospy-msg:f32_1 instead.")
  (f32_1 m))

(cl:ensure-generic-function 'f32_3-val :lambda-list '(m))
(cl:defmethod f32_3-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:f32_3-val is deprecated.  Use test_rospy-msg:f32_3 instead.")
  (f32_3 m))

(cl:ensure-generic-function 'f64_1-val :lambda-list '(m))
(cl:defmethod f64_1-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:f64_1-val is deprecated.  Use test_rospy-msg:f64_1 instead.")
  (f64_1 m))

(cl:ensure-generic-function 'f64_3-val :lambda-list '(m))
(cl:defmethod f64_3-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:f64_3-val is deprecated.  Use test_rospy-msg:f64_3 instead.")
  (f64_3 m))

(cl:ensure-generic-function 'i8_1-val :lambda-list '(m))
(cl:defmethod i8_1-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:i8_1-val is deprecated.  Use test_rospy-msg:i8_1 instead.")
  (i8_1 m))

(cl:ensure-generic-function 'i8_3-val :lambda-list '(m))
(cl:defmethod i8_3-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:i8_3-val is deprecated.  Use test_rospy-msg:i8_3 instead.")
  (i8_3 m))

(cl:ensure-generic-function 'u8_1-val :lambda-list '(m))
(cl:defmethod u8_1-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:u8_1-val is deprecated.  Use test_rospy-msg:u8_1 instead.")
  (u8_1 m))

(cl:ensure-generic-function 'u8_3-val :lambda-list '(m))
(cl:defmethod u8_3-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:u8_3-val is deprecated.  Use test_rospy-msg:u8_3 instead.")
  (u8_3 m))

(cl:ensure-generic-function 'i32_1-val :lambda-list '(m))
(cl:defmethod i32_1-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:i32_1-val is deprecated.  Use test_rospy-msg:i32_1 instead.")
  (i32_1 m))

(cl:ensure-generic-function 'i32_3-val :lambda-list '(m))
(cl:defmethod i32_3-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:i32_3-val is deprecated.  Use test_rospy-msg:i32_3 instead.")
  (i32_3 m))

(cl:ensure-generic-function 'u32_1-val :lambda-list '(m))
(cl:defmethod u32_1-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:u32_1-val is deprecated.  Use test_rospy-msg:u32_1 instead.")
  (u32_1 m))

(cl:ensure-generic-function 'u32_3-val :lambda-list '(m))
(cl:defmethod u32_3-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:u32_3-val is deprecated.  Use test_rospy-msg:u32_3 instead.")
  (u32_3 m))

(cl:ensure-generic-function 's_1-val :lambda-list '(m))
(cl:defmethod s_1-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:s_1-val is deprecated.  Use test_rospy-msg:s_1 instead.")
  (s_1 m))

(cl:ensure-generic-function 's_3-val :lambda-list '(m))
(cl:defmethod s_3-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:s_3-val is deprecated.  Use test_rospy-msg:s_3 instead.")
  (s_3 m))

(cl:ensure-generic-function 'b_1-val :lambda-list '(m))
(cl:defmethod b_1-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:b_1-val is deprecated.  Use test_rospy-msg:b_1 instead.")
  (b_1 m))

(cl:ensure-generic-function 'b_3-val :lambda-list '(m))
(cl:defmethod b_3-val ((m <TestFixedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:b_3-val is deprecated.  Use test_rospy-msg:b_3 instead.")
  (b_3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestFixedArray>) ostream)
  "Serializes a message object of type '<TestFixedArray>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'f32_1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'f32_3))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'f64_1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'f64_3))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'i8_1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'i8_3))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'u8_1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'u8_3))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'i32_1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'i32_3))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'u32_1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'u32_3))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 's_1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 's_3))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'b_1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'b_3))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestFixedArray>) istream)
  "Deserializes a message object of type '<TestFixedArray>"
  (cl:setf (cl:slot-value msg 'f32_1) (cl:make-array 1))
  (cl:let ((vals (cl:slot-value msg 'f32_1)))
    (cl:dotimes (i 1)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'f32_3) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'f32_3)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'f64_1) (cl:make-array 1))
  (cl:let ((vals (cl:slot-value msg 'f64_1)))
    (cl:dotimes (i 1)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'f64_3) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'f64_3)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'i8_1) (cl:make-array 1))
  (cl:let ((vals (cl:slot-value msg 'i8_1)))
    (cl:dotimes (i 1)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  (cl:setf (cl:slot-value msg 'i8_3) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'i8_3)))
    (cl:dotimes (i 3)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  (cl:setf (cl:slot-value msg 'u8_1) (cl:make-array 1))
  (cl:let ((vals (cl:slot-value msg 'u8_1)))
    (cl:dotimes (i 1)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'u8_3) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'u8_3)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'i32_1) (cl:make-array 1))
  (cl:let ((vals (cl:slot-value msg 'i32_1)))
    (cl:dotimes (i 1)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  (cl:setf (cl:slot-value msg 'i32_3) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'i32_3)))
    (cl:dotimes (i 3)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  (cl:setf (cl:slot-value msg 'u32_1) (cl:make-array 1))
  (cl:let ((vals (cl:slot-value msg 'u32_1)))
    (cl:dotimes (i 1)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'u32_3) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'u32_3)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 's_1) (cl:make-array 1))
  (cl:let ((vals (cl:slot-value msg 's_1)))
    (cl:dotimes (i 1)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))))
  (cl:setf (cl:slot-value msg 's_3) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 's_3)))
    (cl:dotimes (i 3)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))))
  (cl:setf (cl:slot-value msg 'b_1) (cl:make-array 1))
  (cl:let ((vals (cl:slot-value msg 'b_1)))
    (cl:dotimes (i 1)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'b_3) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'b_3)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestFixedArray>)))
  "Returns string type for a message object of type '<TestFixedArray>"
  "test_rospy/TestFixedArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestFixedArray)))
  "Returns string type for a message object of type 'TestFixedArray"
  "test_rospy/TestFixedArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestFixedArray>)))
  "Returns md5sum for a message object of type '<TestFixedArray>"
  "1557473dc09f1a01a00123a713c822a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestFixedArray)))
  "Returns md5sum for a message object of type 'TestFixedArray"
  "1557473dc09f1a01a00123a713c822a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestFixedArray>)))
  "Returns full string definition for message of type '<TestFixedArray>"
  (cl:format cl:nil "float32[1] f32_1~%float32[3] f32_3~%float64[1] f64_1~%float64[3] f64_3~%int8[1] i8_1~%int8[3] i8_3~%uint8[1] u8_1~%uint8[3] u8_3~%int32[1] i32_1~%int32[3] i32_3~%uint32[1] u32_1~%uint32[3] u32_3~%string[1] s_1~%string[3] s_3~%bool[1] b_1~%bool[3] b_3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestFixedArray)))
  "Returns full string definition for message of type 'TestFixedArray"
  (cl:format cl:nil "float32[1] f32_1~%float32[3] f32_3~%float64[1] f64_1~%float64[3] f64_3~%int8[1] i8_1~%int8[3] i8_3~%uint8[1] u8_1~%uint8[3] u8_3~%int32[1] i32_1~%int32[3] i32_3~%uint32[1] u32_1~%uint32[3] u32_3~%string[1] s_1~%string[3] s_3~%bool[1] b_1~%bool[3] b_3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestFixedArray>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'f32_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'f32_3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'f64_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'f64_3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'i8_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'i8_3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'u8_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'u8_3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'i32_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'i32_3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'u32_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'u32_3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 's_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 's_3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'b_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'b_3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestFixedArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TestFixedArray
    (cl:cons ':f32_1 (f32_1 msg))
    (cl:cons ':f32_3 (f32_3 msg))
    (cl:cons ':f64_1 (f64_1 msg))
    (cl:cons ':f64_3 (f64_3 msg))
    (cl:cons ':i8_1 (i8_1 msg))
    (cl:cons ':i8_3 (i8_3 msg))
    (cl:cons ':u8_1 (u8_1 msg))
    (cl:cons ':u8_3 (u8_3 msg))
    (cl:cons ':i32_1 (i32_1 msg))
    (cl:cons ':i32_3 (i32_3 msg))
    (cl:cons ':u32_1 (u32_1 msg))
    (cl:cons ':u32_3 (u32_3 msg))
    (cl:cons ':s_1 (s_1 msg))
    (cl:cons ':s_3 (s_3 msg))
    (cl:cons ':b_1 (b_1 msg))
    (cl:cons ':b_3 (b_3 msg))
))
