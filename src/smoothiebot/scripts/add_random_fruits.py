#!/usr/bin/env python

import world_manager
import geometry_msgs.msg


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
    wm = world_manager.world_manager_client
    print("World manager client created")

    apple_pose_stamped = fill_pose_stamped(.4, .2, .5, 0, 0, 0, 1.0)
    wm.add_mesh("apple", mesh_filepath='/home/student/smoothiebot_ws/FruitPlys/apple.ply', pose_stamped=apple_pose_stamped)
    print("add banana")

    banana_pose_stamped = fill_pose_stamped(.4, -.2, .5, 0, 0, 0, 1.0)
    wm.add_mesh("banana", mesh_filepath='/home/student/smoothiebot_ws/FruitPlys/banana.ply', pose_stamped=banana_pose_stamped)

    # Need to scale orange file properly
    #orange_pose_stamped = fill_pose_stamped(.5, 0, .5, 0, 0, 0, 1.0)
    #wm.add_mesh("orange", mesh_filepath='/home/ozymandias/smoothiebot_ws/FruitPlys/orange.ply', pose_stamped=orange_pose_stamped)
