; Auto-generated. Do not edit!


(cl:in-package world_manager_msgs-srv)


;//! \htmlinclude AddTF-request.msg.html

(cl:defclass <AddTF-request> (roslisp-msg-protocol:ros-message)
  ((frame_name
    :reader frame_name
    :initarg :frame_name
    :type cl:string
    :initform "")
   (pose_stamped
    :reader pose_stamped
    :initarg :pose_stamped
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass AddTF-request (<AddTF-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTF-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTF-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_manager_msgs-srv:<AddTF-request> is deprecated: use world_manager_msgs-srv:AddTF-request instead.")))

(cl:ensure-generic-function 'frame_name-val :lambda-list '(m))
(cl:defmethod frame_name-val ((m <AddTF-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-srv:frame_name-val is deprecated.  Use world_manager_msgs-srv:frame_name instead.")
  (frame_name m))

(cl:ensure-generic-function 'pose_stamped-val :lambda-list '(m))
(cl:defmethod pose_stamped-val ((m <AddTF-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_manager_msgs-srv:pose_stamped-val is deprecated.  Use world_manager_msgs-srv:pose_stamped instead.")
  (pose_stamped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTF-request>) ostream)
  "Serializes a message object of type '<AddTF-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_stamped) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTF-request>) istream)
  "Deserializes a message object of type '<AddTF-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_stamped) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTF-request>)))
  "Returns string type for a service object of type '<AddTF-request>"
  "world_manager_msgs/AddTFRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTF-request)))
  "Returns string type for a service object of type 'AddTF-request"
  "world_manager_msgs/AddTFRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTF-request>)))
  "Returns md5sum for a message object of type '<AddTF-request>"
  "7628ce852ab5e9d13813162d145212da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTF-request)))
  "Returns md5sum for a message object of type 'AddTF-request"
  "7628ce852ab5e9d13813162d145212da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTF-request>)))
  "Returns full string definition for message of type '<AddTF-request>"
  (cl:format cl:nil "string frame_name~%geometry_msgs/PoseStamped pose_stamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTF-request)))
  "Returns full string definition for message of type 'AddTF-request"
  (cl:format cl:nil "string frame_name~%geometry_msgs/PoseStamped pose_stamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTF-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_stamped))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTF-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTF-request
    (cl:cons ':frame_name (frame_name msg))
    (cl:cons ':pose_stamped (pose_stamped msg))
))
;//! \htmlinclude AddTF-response.msg.html

(cl:defclass <AddTF-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddTF-response (<AddTF-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTF-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTF-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_manager_msgs-srv:<AddTF-response> is deprecated: use world_manager_msgs-srv:AddTF-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTF-response>) ostream)
  "Serializes a message object of type '<AddTF-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTF-response>) istream)
  "Deserializes a message object of type '<AddTF-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTF-response>)))
  "Returns string type for a service object of type '<AddTF-response>"
  "world_manager_msgs/AddTFResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTF-response)))
  "Returns string type for a service object of type 'AddTF-response"
  "world_manager_msgs/AddTFResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTF-response>)))
  "Returns md5sum for a message object of type '<AddTF-response>"
  "7628ce852ab5e9d13813162d145212da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTF-response)))
  "Returns md5sum for a message object of type 'AddTF-response"
  "7628ce852ab5e9d13813162d145212da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTF-response>)))
  "Returns full string definition for message of type '<AddTF-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTF-response)))
  "Returns full string definition for message of type 'AddTF-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTF-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTF-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTF-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddTF)))
  'AddTF-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddTF)))
  'AddTF-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTF)))
  "Returns string type for a service object of type '<AddTF>"
  "world_manager_msgs/AddTF")