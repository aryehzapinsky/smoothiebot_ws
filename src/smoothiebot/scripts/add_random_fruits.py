#!/usr/bin/env python

import world_manager
import geometry_msgs.msg
import rospy

def fill_pose_stamped(x, y, z, ox, oy, oz, ow):
    pose_stamped = geometry_msgs.msg.PoseStamped()
    pose_stamped.pose.position.x = x
    pose_stamped.pose.position.y = y
    pose_stamped.pose.position.z = z
    pose_stamped.pose.orientation.x = ox
    pose_stamped.pose.orientation.y = oy
    pose_stamped.pose.orientation.z = oz
    pose_stamped.pose.orientation.w = ow
    pose_stamped.header.frame_id = "base_link"

    return pose_stamped

if __name__ == "__main__":
    rospy.init_node("object_spawner")
    rospy.wait_for_service("/world_manager/clear_objects")

    wm = world_manager.world_manager_client
    print("World manager client created")

    apple_pose_stamped = fill_pose_stamped(0.696731, 0.014137, 0.77531, 1.58409, -0.039766, 0.000459, 1.0)
    wm.add_mesh("apple", mesh_filepath='/home/ozymandias/smoothiebot_ws/FruitPlys/apple.ply', pose_stamped=apple_pose_stamped)
    print("apple has been added")

    banana_pose_stamped = fill_pose_stamped(0.633429, 0.193047, 0.784009, 1.56044, -0.003598, 0.000204, 1.0)
    wm.add_mesh("banana", mesh_filepath='/home/ozymandias/smoothiebot_ws/FruitDae/banana.dae', pose_stamped=banana_pose_stamped)
    print("banana has been added")

    # Need to scale orange file properly
    #orange_pose_stamped = fill_pose_stamped(.5, 0, .5, 0, 0, 0, 1.0)
    #wm.add_mesh("orange", mesh_filepath='/home/ozymandias/smoothiebot_ws/FruitPlys/orange.ply', pose_stamped=orange_pose_stamped)
