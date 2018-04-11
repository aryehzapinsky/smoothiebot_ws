import world_manager
import geometry_msgs.msg

wm = world_manager.world_manager_client.WorldManagerClient()

pose_stamped = geometry_msgs.msg.PoseStamped()
pose_stamped.pose = geometry_msgs.msg.Pose()
pose_stamped.pose.position.x = 1.0
pose_stamped.pose.position.y = 1.0
pose_stamped.pose.position.z = 1.0
pose_stamped.pose.orientation.x = 1.0
pose_stamped.pose.orientation.y = 1.0
pose_stamped.pose.orientation.z = 1.0
pose_stamped.pose.orientation.w = 1.0
pose_stamped.header.frame_id = "apple"

#wm.add_mesh("apple", mesh_filepath='/home/ozymandias/smoothiebot_ws/Fruit/apple.ply', pose_stamped=pose_stamped)
