;; Auto-generated. Do not edit!


(when (boundp 'world_manager_msgs::AddMesh)
  (if (not (find-package "WORLD_MANAGER_MSGS"))
    (make-package "WORLD_MANAGER_MSGS"))
  (shadow 'AddMesh (find-package "WORLD_MANAGER_MSGS")))
(unless (find-package "WORLD_MANAGER_MSGS::ADDMESH")
  (make-package "WORLD_MANAGER_MSGS::ADDMESH"))
(unless (find-package "WORLD_MANAGER_MSGS::ADDMESHREQUEST")
  (make-package "WORLD_MANAGER_MSGS::ADDMESHREQUEST"))
(unless (find-package "WORLD_MANAGER_MSGS::ADDMESHRESPONSE")
  (make-package "WORLD_MANAGER_MSGS::ADDMESHRESPONSE"))

(in-package "ROS")





(defclass world_manager_msgs::AddMeshRequest
  :super ros::object
  :slots (_scene_object ))

(defmethod world_manager_msgs::AddMeshRequest
  (:init
   (&key
    ((:scene_object __scene_object) (instance world_manager_msgs::SceneObject :init))
    )
   (send-super :init)
   (setq _scene_object __scene_object)
   self)
  (:scene_object
   (&rest __scene_object)
   (if (keywordp (car __scene_object))
       (send* _scene_object __scene_object)
     (progn
       (if __scene_object (setq _scene_object (car __scene_object)))
       _scene_object)))
  (:serialization-length
   ()
   (+
    ;; world_manager_msgs/SceneObject _scene_object
    (send _scene_object :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; world_manager_msgs/SceneObject _scene_object
       (send _scene_object :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; world_manager_msgs/SceneObject _scene_object
     (send _scene_object :deserialize buf ptr-) (incf ptr- (send _scene_object :serialization-length))
   ;;
   self)
  )

(defclass world_manager_msgs::AddMeshResponse
  :super ros::object
  :slots ())

(defmethod world_manager_msgs::AddMeshResponse
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

(defclass world_manager_msgs::AddMesh
  :super ros::object
  :slots ())

(setf (get world_manager_msgs::AddMesh :md5sum-) "ab9fb1b3836095aff25e5ff73555f6d8")
(setf (get world_manager_msgs::AddMesh :datatype-) "world_manager_msgs/AddMesh")
(setf (get world_manager_msgs::AddMesh :request) world_manager_msgs::AddMeshRequest)
(setf (get world_manager_msgs::AddMesh :response) world_manager_msgs::AddMeshResponse)

(defmethod world_manager_msgs::AddMeshRequest
  (:response () (instance world_manager_msgs::AddMeshResponse :init)))

(setf (get world_manager_msgs::AddMeshRequest :md5sum-) "ab9fb1b3836095aff25e5ff73555f6d8")
(setf (get world_manager_msgs::AddMeshRequest :datatype-) "world_manager_msgs/AddMeshRequest")
(setf (get world_manager_msgs::AddMeshRequest :definition-)
      "world_manager_msgs/SceneObject scene_object

================================================================================
MSG: world_manager_msgs/SceneObject
string object_name
string mesh_filepath
geometry_msgs/PoseStamped pose_stamped
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

(setf (get world_manager_msgs::AddMeshResponse :md5sum-) "ab9fb1b3836095aff25e5ff73555f6d8")
(setf (get world_manager_msgs::AddMeshResponse :datatype-) "world_manager_msgs/AddMeshResponse")
(setf (get world_manager_msgs::AddMeshResponse :definition-)
      "world_manager_msgs/SceneObject scene_object

================================================================================
MSG: world_manager_msgs/SceneObject
string object_name
string mesh_filepath
geometry_msgs/PoseStamped pose_stamped
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



(provide :world_manager_msgs/AddMesh "ab9fb1b3836095aff25e5ff73555f6d8")


