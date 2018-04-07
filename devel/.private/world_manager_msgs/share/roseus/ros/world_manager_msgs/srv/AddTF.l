;; Auto-generated. Do not edit!


(when (boundp 'world_manager_msgs::AddTF)
  (if (not (find-package "WORLD_MANAGER_MSGS"))
    (make-package "WORLD_MANAGER_MSGS"))
  (shadow 'AddTF (find-package "WORLD_MANAGER_MSGS")))
(unless (find-package "WORLD_MANAGER_MSGS::ADDTF")
  (make-package "WORLD_MANAGER_MSGS::ADDTF"))
(unless (find-package "WORLD_MANAGER_MSGS::ADDTFREQUEST")
  (make-package "WORLD_MANAGER_MSGS::ADDTFREQUEST"))
(unless (find-package "WORLD_MANAGER_MSGS::ADDTFRESPONSE")
  (make-package "WORLD_MANAGER_MSGS::ADDTFRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass world_manager_msgs::AddTFRequest
  :super ros::object
  :slots (_frame_name _pose_stamped ))

(defmethod world_manager_msgs::AddTFRequest
  (:init
   (&key
    ((:frame_name __frame_name) "")
    ((:pose_stamped __pose_stamped) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _frame_name (string __frame_name))
   (setq _pose_stamped __pose_stamped)
   self)
  (:frame_name
   (&optional __frame_name)
   (if __frame_name (setq _frame_name __frame_name)) _frame_name)
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
    ;; string _frame_name
    4 (length _frame_name)
    ;; geometry_msgs/PoseStamped _pose_stamped
    (send _pose_stamped :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_name
       (write-long (length _frame_name) s) (princ _frame_name s)
     ;; geometry_msgs/PoseStamped _pose_stamped
       (send _pose_stamped :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose_stamped
     (send _pose_stamped :deserialize buf ptr-) (incf ptr- (send _pose_stamped :serialization-length))
   ;;
   self)
  )

(defclass world_manager_msgs::AddTFResponse
  :super ros::object
  :slots ())

(defmethod world_manager_msgs::AddTFResponse
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

(defclass world_manager_msgs::AddTF
  :super ros::object
  :slots ())

(setf (get world_manager_msgs::AddTF :md5sum-) "7628ce852ab5e9d13813162d145212da")
(setf (get world_manager_msgs::AddTF :datatype-) "world_manager_msgs/AddTF")
(setf (get world_manager_msgs::AddTF :request) world_manager_msgs::AddTFRequest)
(setf (get world_manager_msgs::AddTF :response) world_manager_msgs::AddTFResponse)

(defmethod world_manager_msgs::AddTFRequest
  (:response () (instance world_manager_msgs::AddTFResponse :init)))

(setf (get world_manager_msgs::AddTFRequest :md5sum-) "7628ce852ab5e9d13813162d145212da")
(setf (get world_manager_msgs::AddTFRequest :datatype-) "world_manager_msgs/AddTFRequest")
(setf (get world_manager_msgs::AddTFRequest :definition-)
      "string frame_name
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

(setf (get world_manager_msgs::AddTFResponse :md5sum-) "7628ce852ab5e9d13813162d145212da")
(setf (get world_manager_msgs::AddTFResponse :datatype-) "world_manager_msgs/AddTFResponse")
(setf (get world_manager_msgs::AddTFResponse :definition-)
      "string frame_name
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



(provide :world_manager_msgs/AddTF "7628ce852ab5e9d13813162d145212da")


