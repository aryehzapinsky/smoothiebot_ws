; Auto-generated. Do not edit!


(cl:in-package world_manager_msgs-msg)


;//! \htmlinclude SceneBox.msg.html

(cl:defclass <SceneBox> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform "")
   (pose_stamped
    :reader pose_stamped
    :initarg :pose_stamped
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (edge_length_x
    :reader edge_length_x
    :initarg :edge_length_x
    :type cl:float
    :initform 0.0)
   (edge_length_y
    :reader edge_length_y
    :initarg :edge_length_y
    :type cl:float
    :initform 0.0)
   (edge_length_z
    :reader edge_length_z
    :initarg :edge_length_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass SceneBox (<SceneBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_manager_msgs-msg:<SceneBox> is deprecated: use world_manager_msgs-msg:SceneBox instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <SceneBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-msg:object_name-val is deprecated.  Use world_manager_msgs-msg:object_name instead.")
  (object_name m))

(cl:ensure-generic-function 'pose_stamped-val :lambda-list '(m))
(cl:defmethod pose_stamped-val ((m <SceneBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-msg:pose_stamped-val is deprecated.  Use world_manager_msgs-msg:pose_stamped instead.")
  (pose_stamped m))

(cl:ensure-generic-function 'edge_length_x-val :lambda-list '(m))
(cl:defmethod edge_length_x-val ((m <SceneBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-msg:edge_length_x-val is deprecated.  Use world_manager_msgs-msg:edge_length_x instead.")
  (edge_length_x m))

(cl:ensure-generic-function 'edge_length_y-val :lambda-list '(m))
(cl:defmethod edge_length_y-val ((m <SceneBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-msg:edge_length_y-val is deprecated.  Use world_manager_msgs-msg:edge_length_y instead.")
  (edge_length_y m))

(cl:ensure-generic-function 'edge_length_z-val :lambda-list '(m))
(cl:defmethod edge_length_z-val ((m <SceneBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-msg:edge_length_z-val is deprecated.  Use world_manager_msgs-msg:edge_length_z instead.")
  (edge_length_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneBox>) ostream)
  "Serializes a message object of type '<SceneBox>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_stamped) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'edge_length_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'edge_length_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'edge_length_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneBox>) istream)
  "Deserializes a message object of type '<SceneBox>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_stamped) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'edge_length_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'edge_length_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'edge_length_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneBox>)))
  "Returns string type for a message object of type '<SceneBox>"
  "world_manager_msgs/SceneBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneBox)))
  "Returns string type for a message object of type 'SceneBox"
  "world_manager_msgs/SceneBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneBox>)))
  "Returns md5sum for a message object of type '<SceneBox>"
  "1c55779d40de465f1cada87ee22079c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneBox)))
  "Returns md5sum for a message object of type 'SceneBox"
  "1c55779d40de465f1cada87ee22079c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneBox>)))
  "Returns full string definition for message of type '<SceneBox>"
  (cl:format cl:nil "string object_name~%geometry_msgs/PoseStamped pose_stamped~%float32 edge_length_x~%float32 edge_length_y~%float32 edge_length_z~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneBox)))
  "Returns full string definition for message of type 'SceneBox"
  (cl:format cl:nil "string object_name~%geometry_msgs/PoseStamped pose_stamped~%float32 edge_length_x~%float32 edge_length_y~%float32 edge_length_z~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneBox>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_stamped))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneBox>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneBox
    (cl:cons ':object_name (object_name msg))
    (cl:cons ':pose_stamped (pose_stamped msg))
    (cl:cons ':edge_length_x (edge_length_x msg))
    (cl:cons ':edge_length_y (edge_length_y msg))
    (cl:cons ':edge_length_z (edge_length_z msg))
))
