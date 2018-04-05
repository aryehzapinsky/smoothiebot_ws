#!/usr/bin/env python

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import shape_msgs.msg

from std_msgs.msg import String

def move_demo():
    moveit_commander.roscpp_initialize(sys.argv)
    rospy.init_node('moveit_personal_demo', anonymous=True)

    robot = moveit_commander.RobotCommander()

    scene = moveit_commander.PlanningSceneInterface()

    group = moveit_commander.MoveGroupCommander("left_arm")

    display_trajectory_publisher = rospy.Publisher(
        '/move_group/display_planned_path',
        moveit_msgs.msg.DisplayTrajectory,
        queue_size=20)

    rospy.sleep(10) #allow RVIZ to initialize??

    print ("============ Reference frame: %s" % group.get_planning_frame())

    print("=========== Generating plan 1")
    pose_target = geometry_msgs.msg.Pose()
    pose_target.orientation.w = 1.0
    pose_target.position.x = 0.7
    pose_target.position.y = -0.05
    pose_target.position.z = 1.1
    group.set_pose_target(pose_target)

    plan1 = group.plan()
    print ("========= Waiting while RVIZ displays play1...")
    rospy.sleep(10)

    collision_object = moveit_msgs.msg.CollisionObject()
    collision_object.header.frame_id = group.get_planning_frame();
    collision_object.id = 'box1'

    # primitive = shape_msgs.msg.SolidPrimitive()
    # primitive.type = primitive.BOX
    # primitive.dimensions.append(0.4)
    # primitive.dimensions.append(0.1)
    # primitive.dimensions.append(0.4)

    # collision_object.primitives.append(primitive)
    # collision_object.primitive_poses.append(box_pose)
    # collision_object.operation = collision_object.ADD

    # collision_objects = list(collision_objects)


    # print("================= Trying to add box1")
    # box1_pose = geometry_msgs.msg.Pose()
    # box1_pose.orientation.w = 1.0
    # box1_pose.position.x = 0.5
    # box1_pose.position.y = 0.2
    # box1_pose.position.z = 0.3
    # box1_pose_stamped = geometry_msgs.msg.PoseStamped()
    # box1_pose_stamped.pose = box1_pose
    # box1_pose_stamped.header = ""
    # scene.add_box("box1", box1_pose)

    # rospy.sleep(10)


    moveit_commander.roscpp_shutdown()


if __name__ == '__main__':
    try:
        move_demo()
    except rospy.ROSInterruptException:
        pass
