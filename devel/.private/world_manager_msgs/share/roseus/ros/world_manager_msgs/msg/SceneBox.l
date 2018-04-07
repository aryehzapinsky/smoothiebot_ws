;; Auto-generated. Do not edit!


(when (boundp 'world_manager_msgs::SceneBox)
  (if (not (find-package "WORLD_MANAGER_MSGS"))
    (make-package "WORLD_MANAGER_MSGS"))
  (shadow 'SceneBox (find-package "WORLD_MANAGER_MSGS")))
(unless (find-package "WORLD_MANAGER_MSGS::SCENEBOX")
  (make-package "WORLD_MANAGER_MSGS::SCENEBOX"))

(in-package "ROS")
;;//! \htmlinclude SceneBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass world_manager_msgs::SceneBox
  :super ros::object
  :slots (_object_name _pose_stamped _edge_length_x _edge_length_y _edge_length_z ))

(defmethod world_manager_msgs::SceneBox
  (:init
   (&key
    ((:object_name __object_name) "")
    ((:pose_stamped __pose_stamped) (instance geometry_msgs::PoseStamped :init))
    ((:edge_length_x __edge_length_x) 0.0)
    ((:edge_length_y __edge_length_y) 0.0)
    ((:edge_length_z __edge_length_z) 0.0)
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   (setq _pose_stamped __pose_stamped)
   (setq _edge_length_x (float __edge_length_x))
   (setq _edge_length_y (float __edge_length_y))
   (setq _edge_length_z (float __edge_length_z))
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:pose_stamped
   (&rest __pose_stamped)
   (if (keywordp (car __pose_stamped))
       (send* _pose_stamped __pose_stamped)
     (progn
       (if __pose_stamped (setq _pose_stamped (car __pose_stamped)))
       _pose_stamped)))
  (:edge_length_x
   (&optional __edge_length_x)
   (if __edge_length_x (setq _edge_length_x __edge_length_x)) _edge_length_x)
  (:edge_length_y
   (&optional __edge_length_y)
   (if __edge_length_y (setq _edge_length_y __edge_length_y)) _edge_length_y)
  (:edge_length_z
   (&optional __edge_length_z)
   (if __edge_length_z (setq _edge_length_z __edge_length_z)) _edge_length_z)
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ;; geometry_msgs/PoseStamped _pose_stamped
    (send _pose_stamped :serialization-length)
    ;; float32 _edge_length_x
    4
    ;; float32 _edge_length_y
    4
    ;; float32 _edge_length_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; geometry_msgs/PoseStamped _pose_stamped
       (send _pose_stamped :serialize s)
     ;; float32 _edge_length_x
       (sys::poke _edge_length_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _edge_length_y
       (sys::poke _edge_length_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _edge_length_z
       (sys::poke _edge_length_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose_stamped
     (send _pose_stamped :deserialize buf ptr-) (incf ptr- (send _pose_stamped :serialization-length))
   ;; float32 _edge_length_x
     (setq _edge_length_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _edge_length_y
     (setq _edge_length_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _edge_length_z
     (setq _edge_length_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get world_manager_msgs::SceneBox :md5sum-) "1c55779d40de465f1cada87ee22079c4")
(setf (get world_manager_msgs::SceneBox :datatype-) "world_manager_msgs/SceneBox")
(setf (get world_manager_msgs::SceneBox :definition-)
      "string object_name
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

")



(provide :world_manager_msgs/SceneBox "1c55779d40de465f1cada87ee22079c4")


