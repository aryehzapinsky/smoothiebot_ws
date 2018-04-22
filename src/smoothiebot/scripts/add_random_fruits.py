#!/usr/bin/env python

import world_manager
import geometry_msgs.msg
import rospy
import tf

import world_transform

"""
tf publisher
publisher position x: 1, y: 1, z:1, orientartion
publish tf from /world to /base_link
publish transform /tf from /world -> /baselink
rospy rate 50 hertz

"""

def copy_to_pose_stamped(pose, object_name):
    pose_stamped = geometry_msgs.msg.PoseStamped()
    pose_stamped.pose = pose
    pose_stamped.header.frame_id = object_name
    return pose_stamped

def fill_pose_stamped(x, y, z, ox, oy
                      , oz, ow):
    pose_stamped = geometry_msgs.msg.PoseStamped()
    pose_stamped.pose.position.x = x
    pose_stamped.pose.position.y = y
    pose_stamped.pose.position.z = z
    pose_stamped.pose.orientation.x = ox
    pose_stamped.pose.orientation.y = oy
    pose_stamped.pose.orientation.z = oz
    pose_stamped.pose.orientation.w = ow
    pose_stamped.header.frame_id = "world"

    return pose_stamped

if __name__ == "__main__":
    rospy.init_node("object_spawner")
    rospy.wait_for_service("/world_manager/clear_objects")

    wm = world_manager.world_manager_client
    print("World manager client created")


    listener = tf.listener.TransformListener()
    listener.waitForTransform("/base_link", "/world", rospy.Time(), rospy.Duration(4.0))
    #apple_pose_stamped = fill_pose_stamped(0.696731, 0.014137, 0.77531, 0.71031, -0.01339, 0.013910, 0.70362)
    apple_pose = world_transform.get_model_pose("apple")
    apple_pose_stamped = copy_to_pose_stamped(apple_pose, "world")
    wm.add_mesh("apple", mesh_filepath='/home/ozymandias/smoothiebot_ws/FruitPlys/apple.ply', pose_stamped=apple_pose_stamped)
    print("apple has been added")

    #banana_pose_stamped = fill_pose_stamped(0.633429, 0.193047, 0.784009, 0.702476, -0.002126, 0.002249, 0.711700)
    banana_pose_stamped = copy_to_pose_stamped(world_transform.get_model_pose("banana"), "world")
    wm.add_mesh("banana", mesh_filepath='/home/ozymandias/smoothiebot_ws/FruitDae/banana.dae', pose_stamped=banana_pose_stamped)
    print("banana has been added")

    # Need to scale orange file properly
    #orange_pose_stamped = fill_pose_stamped(.5, 0, .5, 0, 0, 0, 1.0)
    #wm.add_mesh("orange", mesh_filepath='/home/ozymandias/smoothiebot_ws/FruitPlys/orange.ply', pose_stamped=orange_pose_stamped)
