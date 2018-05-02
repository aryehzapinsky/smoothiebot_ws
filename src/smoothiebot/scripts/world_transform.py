#!/usr/bin/env python

import rospy
import geometry_msgs.msg
import gazebo_msgs.msg
import gazebo_msgs.srv
import world_manager
import tf
import numpy as np

def get_world_properties():
    service_proxy = rospy.ServiceProxy("/gazebo/get_world_properties", gazebo_msgs.srv.GetWorldProperties)
    service_proxy.wait_for_service(timeout=5)
    service_proxy()

def get_model_pose(object_name, object_entity=None):
    service_proxy = rospy.ServiceProxy("/gazebo/get_model_state", gazebo_msgs.srv.GetModelState)
    service_proxy.wait_for_service(timeout=5)

    model_state = gazebo_msgs.srv.GetModelStateRequest()
    model_state.model_name = object_name
    if object_entity is not None:
        model_state.relative_entity_name = object_entity
    return service_proxy(model_state).pose

def set_model_pose(model_state):
    service_proxy = rospy.ServiceProxy("/gazebo/set_model_state", gazebo_msgs.srv.SetModelState)
    service_proxy.wait_for_service(timeout=5)
    service_proxy(model_state)

def copy_to_pose_stamped(pose, object_name):
    pose_stamped = geometry_msgs.msg.PoseStamped()
    pose_stamped.pose = pose
    pose_stamped.header.frame_id = object_name
    return pose_stamped

def adjust_rotation(pose_stamped):
    o = pose_stamped.pose.orientation
    rotz = tf.transformations.quaternion_from_euler(0, 0, 1.5707) #90 deg
    original = np.array([o.x, o.y, o.z, o.w])
    rotated = tf.transformations.quaternion_multiply(rotz, original)
    pose_stamped.pose.orientation.x = rotated[0]
    pose_stamped.pose.orientation.y = rotated[1]
    pose_stamped.pose.orientation.z = rotated[2]
    pose_stamped.pose.orientation.w = rotated[3]

    #pose_stamped.pose.position.x =  -pose_stamped.pose.position.x
    #pose_stamped.pose.position.y =  -pose_stamped.pose.position.y
    #pose_stamped.pose.position.z =  -pose_stamped.pose.position.z

    return pose_stamped

def fill_pose_stamped_from_tf(tf, frame_id):
    p, o = tf
    pose_stamped = geometry_msgs.msg.PoseStamped()
    pose_stamped.pose.position.x = p[0]
    pose_stamped.pose.position.y = p[1]
    pose_stamped.pose.position.z = p[2]
    pose_stamped.pose.orientation.x = o[0]
    pose_stamped.pose.orientation.y = o[1]
    pose_stamped.pose.orientation.z = o[2]
    pose_stamped.pose.orientation.w = o[3]


    pose_stamped.header.frame_id = frame_id

    return pose_stamped


if __name__ == "__main__":
    rospy.init_node("world_transform_publisher")
    rospy.wait_for_service("/world_manager/clear_objects")

    wm = world_manager.world_manager_client
    print("World manager client created")

    # fetch_pose = get_model_pose("fetch", "base_link")
    # base_link_stamped = copy_to_pose_stamped(fetch_pose, "map")
    # base_link_stamped = adjust_rotation(base_link_stamped)
    # print("~~~~\n{}\n~~~~\n".format(fetch_pose))
    # wm.add_tf("world", base_link_stamped)

    fixed_point = geometry_msgs.msg.PoseStamped()
    fixed_point.pose.position.x = 0
    fixed_point.pose.position.y = 0
    fixed_point.pose.position.z = 0

    fixed_point.pose.orientation.x = 0
    fixed_point.pose.orientation.y = 0
    fixed_point.pose.orientation.z = 0
    fixed_point.pose.orientation.w = 1
    fixed_point.header.frame_id = 'fixed_point'

    wm.add_tf("world", fixed_point)
    wm.add_tf('map', fixed_point)
    # print("map to world created")

    # fetch_pose = get_model_pose("fetch", "base_link")
    # base_link_stamped = copy_to_pose_stamped(fetch_pose, "fixed_point") #originally was base_link
    # base_link_stamped = adjust_rotation(base_link_stamped)
    # #print("~~~~\n{}\n~~~~\n".format(fetch_pose))
    # wm.add_tf("map", base_link_stamped) #was world
    # print("added map to fixed_point")

    #rospy.wait_for_service("/map_server/get_loggers")

    #fetch_pose = get_model_pose("fetch", "base_link")
    #base_link_stamped = copy_to_pose_stamped(fetch_pose, "fixed_point") #originally was base_link
    #base_link_stamped = adjust_rotation(base_link_stamped)
    #print("~~~~\n{}\n~~~~\n".format(fetch_pose))
    #wm.add_tf("world", base_link_stamped) #was world
    #print("added map to world")

    # r = rospy.Rate(10)
    # while not rospy.is_shutdown():
    #     transfrom_listener = tf.TransformListener()
    #     trans = transfrom_listener.lookupTransform('map', 'base_link', rospy.Time())
    #     wm.add_tf('map', fill_pose_stamped_from_tf(trans, 'fixed_point'))

        # fetch_pose = get_model_pose("fetch", "base_link")
        # base_link_stamped = copy_to_pose_stamped(fetch_pose, "fixed_point") #originally was base_link
        # base_link_stamped = adjust_rotation(base_link_stamped)
        # #print("~~~~\n{}\n~~~~\n".format(fetch_pose))
        # wm.add_tf("world", base_link_stamped) #was world
        #r.sleep()
