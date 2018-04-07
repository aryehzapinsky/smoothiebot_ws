; Auto-generated. Do not edit!


(cl:in-package world_manager_msgs-msg)


;//! \htmlinclude SceneObject.msg.html

(cl:defclass <SceneObject> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform "")
   (mesh_filepath
    :reader mesh_filepath
    :initarg :mesh_filepath
    :type cl:string
    :initform "")
   (pose_stamped
    :reader pose_stamped
    :initarg :pose_stamped
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass SceneObject (<SceneObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_manager_msgs-msg:<SceneObject> is deprecated: use world_manager_msgs-msg:SceneObject instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <SceneObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-msg:object_name-val is deprecated.  Use world_manager_msgs-msg:object_name instead.")
  (object_name m))

(cl:ensure-generic-function 'mesh_filepath-val :lambda-list '(m))
(cl:defmethod mesh_filepath-val ((m <SceneObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-msg:mesh_filepath-val is deprecated.  Use world_manager_msgs-msg:mesh_filepath instead.")
  (mesh_filepath m))

(cl:ensure-generic-function 'pose_stamped-val :lambda-list '(m))
(cl:defmethod pose_stamped-val ((m <SceneObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-msg:pose_stamped-val is deprecated.  Use world_manager_msgs-msg:pose_stamped instead.")
  (pose_stamped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneObject>) ostream)
  "Serializes a message object of type '<SceneObject>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mesh_filepath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mesh_filepath))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_stamped) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneObject>) istream)
  "Deserializes a message object of type '<SceneObject>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mesh_filepath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mesh_filepath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_stamped) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneObject>)))
  "Returns string type for a message object of type '<SceneObject>"
  "world_manager_msgs/SceneObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneObject)))
  "Returns string type for a message object of type 'SceneObject"
  "world_manager_msgs/SceneObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneObject>)))
  "Returns md5sum for a message object of type '<SceneObject>"
  "20f36b7419e69e39d65a739459b9e19b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneObject)))
  "Returns md5sum for a message object of type 'SceneObject"
  "20f36b7419e69e39d65a739459b9e19b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneObject>)))
  "Returns full string definition for message of type '<SceneObject>"
  (cl:format cl:nil "string object_name~%string mesh_filepath~%geometry_msgs/PoseStamped pose_stamped~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneObject)))
  "Returns full string definition for message of type 'SceneObject"
  (cl:format cl:nil "string object_name~%string mesh_filepath~%geometry_msgs/PoseStamped pose_stamped~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneObject>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
     4 (cl:length (cl:slot-value msg 'mesh_filepath))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_stamped))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneObject>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneObject
    (cl:cons ':object_name (object_name msg))
    (cl:cons ':mesh_filepath (mesh_filepath msg))
    (cl:cons ':pose_stamped (pose_stamped msg))
))
