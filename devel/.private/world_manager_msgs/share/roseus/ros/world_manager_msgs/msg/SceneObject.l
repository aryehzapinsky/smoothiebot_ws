;; Auto-generated. Do not edit!


(when (boundp 'world_manager_msgs::SceneObject)
  (if (not (find-package "WORLD_MANAGER_MSGS"))
    (make-package "WORLD_MANAGER_MSGS"))
  (shadow 'SceneObject (find-package "WORLD_MANAGER_MSGS")))
(unless (find-package "WORLD_MANAGER_MSGS::SCENEOBJECT")
  (make-package "WORLD_MANAGER_MSGS::SCENEOBJECT"))

(in-package "ROS")
;;//! \htmlinclude SceneObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass world_manager_msgs::SceneObject
  :super ros::object
  :slots (_object_name _mesh_filepath _pose_stamped ))

(defmethod world_manager_msgs::SceneObject
  (:init
   (&key
    ((:object_name __object_name) "")
    ((:mesh_filepath __mesh_filepath) "")
    ((:pose_stamped __pose_stamped) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   (setq _mesh_filepath (string __mesh_filepath))
   (setq _pose_stamped __pose_stamped)
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:mesh_filepath
   (&optional __mesh_filepath)
   (if __mesh_filepath (setq _mesh_filepath __mesh_filepath)) _mesh_filepath)
  (:pose_stamped
   (&rest __pose_stamped)
   (if (keywordp (car __pose_stamped))
       (send* _pose_stamped __pose_stamped)
     (progn
       (if __pose_stamped (setq _pose_stamped (car __pose_stamped)))
       _pose_stamped)))
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ;; string _mesh_filepath
    4 (length _mesh_filepath)
    ;; geometry_msgs/PoseStamped _pose_stamped
    (send _pose_stamped :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; string _mesh_filepath
       (write-long (length _mesh_filepath) s) (princ _mesh_filepath s)
     ;; geometry_msgs/PoseStamped _pose_stamped
       (send _pose_stamped :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mesh_filepath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mesh_filepath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose_stamped
     (send _pose_stamped :deserialize buf ptr-) (incf ptr- (send _pose_stamped :serialization-length))
   ;;
   self)
  )

(setf (get world_manager_msgs::SceneObject :md5sum-) "20f36b7419e69e39d65a739459b9e19b")
(setf (get world_manager_msgs::SceneObject :datatype-) "world_manager_msgs/SceneObject")
(setf (get world_manager_msgs::SceneObject :definition-)
      "string object_name
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

")



(provide :world_manager_msgs/SceneObject "20f36b7419e69e39d65a739459b9e19b")


