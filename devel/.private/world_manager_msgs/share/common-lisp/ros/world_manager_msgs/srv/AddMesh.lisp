; Auto-generated. Do not edit!


(cl:in-package world_manager_msgs-srv)


;//! \htmlinclude AddMesh-request.msg.html

(cl:defclass <AddMesh-request> (roslisp-msg-protocol:ros-message)
  ((scene_object
    :reader scene_object
    :initarg :scene_object
    :type world_manager_msgs-msg:SceneObject
    :initform (cl:make-instance 'world_manager_msgs-msg:SceneObject)))
)

(cl:defclass AddMesh-request (<AddMesh-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddMesh-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddMesh-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_manager_msgs-srv:<AddMesh-request> is deprecated: use world_manager_msgs-srv:AddMesh-request instead.")))

(cl:ensure-generic-function 'scene_object-val :lambda-list '(m))
(cl:defmethod scene_object-val ((m <AddMesh-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-srv:scene_object-val is deprecated.  Use world_manager_msgs-srv:scene_object instead.")
  (scene_object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddMesh-request>) ostream)
  "Serializes a message object of type '<AddMesh-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scene_object) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddMesh-request>) istream)
  "Deserializes a message object of type '<AddMesh-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scene_object) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddMesh-request>)))
  "Returns string type for a service object of type '<AddMesh-request>"
  "world_manager_msgs/AddMeshRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMesh-request)))
  "Returns string type for a service object of type 'AddMesh-request"
  "world_manager_msgs/AddMeshRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddMesh-request>)))
  "Returns md5sum for a message object of type '<AddMesh-request>"
  "ab9fb1b3836095aff25e5ff73555f6d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddMesh-request)))
  "Returns md5sum for a message object of type 'AddMesh-request"
  "ab9fb1b3836095aff25e5ff73555f6d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddMesh-request>)))
  "Returns full string definition for message of type '<AddMesh-request>"
  (cl:format cl:nil "world_manager_msgs/SceneObject scene_object~%~%================================================================================~%MSG: world_manager_msgs/SceneObject~%string object_name~%string mesh_filepath~%geometry_msgs/PoseStamped pose_stamped~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddMesh-request)))
  "Returns full string definition for message of type 'AddMesh-request"
  (cl:format cl:nil "world_manager_msgs/SceneObject scene_object~%~%================================================================================~%MSG: world_manager_msgs/SceneObject~%string object_name~%string mesh_filepath~%geometry_msgs/PoseStamped pose_stamped~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddMesh-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scene_object))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddMesh-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddMesh-request
    (cl:cons ':scene_object (scene_object msg))
))
;//! \htmlinclude AddMesh-response.msg.html

(cl:defclass <AddMesh-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddMesh-response (<AddMesh-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddMesh-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddMesh-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_manager_msgs-srv:<AddMesh-response> is deprecated: use world_manager_msgs-srv:AddMesh-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddMesh-response>) ostream)
  "Serializes a message object of type '<AddMesh-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddMesh-response>) istream)
  "Deserializes a message object of type '<AddMesh-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddMesh-response>)))
  "Returns string type for a service object of type '<AddMesh-response>"
  "world_manager_msgs/AddMeshResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMesh-response)))
  "Returns string type for a service object of type 'AddMesh-response"
  "world_manager_msgs/AddMeshResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddMesh-response>)))
  "Returns md5sum for a message object of type '<AddMesh-response>"
  "ab9fb1b3836095aff25e5ff73555f6d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddMesh-response)))
  "Returns md5sum for a message object of type 'AddMesh-response"
  "ab9fb1b3836095aff25e5ff73555f6d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddMesh-response>)))
  "Returns full string definition for message of type '<AddMesh-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddMesh-response)))
  "Returns full string definition for message of type 'AddMesh-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddMesh-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddMesh-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddMesh-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddMesh)))
  'AddMesh-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddMesh)))
  'AddMesh-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMesh)))
  "Returns string type for a service object of type '<AddMesh>"
  "world_manager_msgs/AddMesh")