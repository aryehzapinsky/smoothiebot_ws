;; Auto-generated. Do not edit!


(when (boundp 'world_manager_msgs::AddBox)
  (if (not (find-package "WORLD_MANAGER_MSGS"))
    (make-package "WORLD_MANAGER_MSGS"))
  (shadow 'AddBox (find-package "WORLD_MANAGER_MSGS")))
(unless (find-package "WORLD_MANAGER_MSGS::ADDBOX")
  (make-package "WORLD_MANAGER_MSGS::ADDBOX"))
(unless (find-package "WORLD_MANAGER_MSGS::ADDBOXREQUEST")
  (make-package "WORLD_MANAGER_MSGS::ADDBOXREQUEST"))
(unless (find-package "WORLD_MANAGER_MSGS::ADDBOXRESPONSE")
  (make-package "WORLD_MANAGER_MSGS::ADDBOXRESPONSE"))

(in-package "ROS")





(defclass world_manager_msgs::AddBoxRequest
  :super ros::object
  :slots (_scene_box ))

(defmethod world_manager_msgs::AddBoxRequest
  (:init
   (&key
    ((:scene_box __scene_box) (instance world_manager_msgs::SceneBox :init))
    )
   (send-super :init)
   (setq _scene_box __scene_box)
   self)
  (:scene_box
   (&rest __scene_box)
   (if (keywordp (car __scene_box))
       (send* _scene_box __scene_box)
     (progn
       (if __scene_box (setq _scene_box (car __scene_box)))
       _scene_box)))
  (:serialization-length
   ()
   (+
    ;; world_manager_msgs/SceneBox _scene_box
    (send _scene_box :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; world_manager_msgs/SceneBox _scene_box
       (send _scene_box :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; world_manager_msgs/SceneBox _scene_box
     (send _scene_box :deserialize buf ptr-) (incf ptr- (send _scene_box :serialization-length))
   ;;
   self)
  )

(defclass world_manager_msgs::AddBoxResponse
  :super ros::object
  :slots ())

(defmethod world_manager_msgs::AddBoxResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass world_manager_msgs::AddBox
  :super ros::object
  :slots ())

(setf (get world_manager_msgs::AddBox :md5sum-) "ead51e2681bda79a8bd2c56ad0252ea0")
(setf (get world_manager_msgs::AddBox :datatype-) "world_manager_msgs/AddBox")
(setf (get world_manager_msgs::AddBox :request) world_manager_msgs::AddBoxRequest)
(setf (get world_manager_msgs::AddBox :response) world_manager_msgs::AddBoxResponse)

(defmethod world_manager_msgs::AddBoxRequest
  (:response () (instance world_manager_msgs::AddBoxResponse :init)))

(setf (get world_manager_msgs::AddBoxRequest :md5sum-) "ead51e2681bda79a8bd2c56ad0252ea0")
(setf (get world_manager_msgs::AddBoxRequest :datatype-) "world_manager_msgs/AddBoxRequest")
(setf (get world_manager_msgs::AddBoxRequest :definition-)
      "world_manager_msgs/SceneBox scene_box

================================================================================
MSG: world_manager_msgs/SceneBox
string object_name
geometry_msgs/PoseStamped pose_stamped
float32 edge_length_x
float32 edge_length_y
float32 edge_length_z
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

")

(setf (get world_manager_msgs::AddBoxResponse :md5sum-) "ead51e2681bda79a8bd2c56ad0252ea0")
(setf (get world_manager_msgs::AddBoxResponse :datatype-) "world_manager_msgs/AddBoxResponse")
(setf (get world_manager_msgs::AddBoxResponse :definition-)
      "world_manager_msgs/SceneBox scene_box

================================================================================
MSG: world_manager_msgs/SceneBox
string object_name
geometry_msgs/PoseStamped pose_stamped
float32 edge_length_x
float32 edge_length_y
float32 edge_length_z
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

")



(provide :world_manager_msgs/AddBox "ead51e2681bda79a8bd2c56ad0252ea0")


