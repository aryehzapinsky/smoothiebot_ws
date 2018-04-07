; Auto-generated. Do not edit!


(cl:in-package world_manager_msgs-srv)


;//! \htmlinclude AddBox-request.msg.html

(cl:defclass <AddBox-request> (roslisp-msg-protocol:ros-message)
  ((scene_box
    :reader scene_box
    :initarg :scene_box
    :type world_manager_msgs-msg:SceneBox
    :initform (cl:make-instance 'world_manager_msgs-msg:SceneBox)))
)

(cl:defclass AddBox-request (<AddBox-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddBox-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddBox-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_manager_msgs-srv:<AddBox-request> is deprecated: use world_manager_msgs-srv:AddBox-request instead.")))

(cl:ensure-generic-function 'scene_box-val :lambda-list '(m))
(cl:defmethod scene_box-val ((m <AddBox-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-srv:scene_box-val is deprecated.  Use world_manager_msgs-srv:scene_box instead.")
  (scene_box m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddBox-request>) ostream)
  "Serializes a message object of type '<AddBox-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scene_box) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddBox-request>) istream)
  "Deserializes a message object of type '<AddBox-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scene_box) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddBox-request>)))
  "Returns string type for a service object of type '<AddBox-request>"
  "world_manager_msgs/AddBoxRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddBox-request)))
  "Returns string type for a service object of type 'AddBox-request"
  "world_manager_msgs/AddBoxRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddBox-request>)))
  "Returns md5sum for a message object of type '<AddBox-request>"
  "ead51e2681bda79a8bd2c56ad0252ea0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddBox-request)))
  "Returns md5sum for a message object of type 'AddBox-request"
  "ead51e2681bda79a8bd2c56ad0252ea0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddBox-request>)))
  "Returns full string definition for message of type '<AddBox-request>"
  (cl:format cl:nil "world_manager_msgs/SceneBox scene_box~%~%================================================================================~%MSG: world_manager_msgs/SceneBox~%string object_name~%geometry_msgs/PoseStamped pose_stamped~%float32 edge_length_x~%float32 edge_length_y~%float32 edge_length_z~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddBox-request)))
  "Returns full string definition for message of type 'AddBox-request"
  (cl:format cl:nil "world_manager_msgs/SceneBox scene_box~%~%================================================================================~%MSG: world_manager_msgs/SceneBox~%string object_name~%geometry_msgs/PoseStamped pose_stamped~%float32 edge_length_x~%float32 edge_length_y~%float32 edge_length_z~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddBox-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scene_box))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddBox-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddBox-request
    (cl:cons ':scene_box (scene_box msg))
))
;//! \htmlinclude AddBox-response.msg.html

(cl:defclass <AddBox-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddBox-response (<AddBox-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddBox-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddBox-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_manager_msgs-srv:<AddBox-response> is deprecated: use world_manager_msgs-srv:AddBox-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddBox-response>) ostream)
  "Serializes a message object of type '<AddBox-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddBox-response>) istream)
  "Deserializes a message object of type '<AddBox-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddBox-response>)))
  "Returns string type for a service object of type '<AddBox-response>"
  "world_manager_msgs/AddBoxResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddBox-response)))
  "Returns string type for a service object of type 'AddBox-response"
  "world_manager_msgs/AddBoxResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddBox-response>)))
  "Returns md5sum for a message object of type '<AddBox-response>"
  "ead51e2681bda79a8bd2c56ad0252ea0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddBox-response)))
  "Returns md5sum for a message object of type 'AddBox-response"
  "ead51e2681bda79a8bd2c56ad0252ea0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddBox-response>)))
  "Returns full string definition for message of type '<AddBox-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddBox-response)))
  "Returns full string definition for message of type 'AddBox-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddBox-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddBox-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddBox-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddBox)))
  'AddBox-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddBox)))
  'AddBox-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddBox)))
  "Returns string type for a service object of type '<AddBox>"
  "world_manager_msgs/AddBox")