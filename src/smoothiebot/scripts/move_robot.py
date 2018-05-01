#!/usr/bin/env python

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg

import world_transform
import add_random_fruits as arf

if __name__ =="__main__":
    moveit_commander.roscpp_initialize(sys.argv)
    rospy.init_node("move_group_python_interface",
                    anonymous=True)

    robot = moveit_commander.RobotCommander()
    scene = moveit_commander.PlanningSceneInterface()
    group = moveit_commander.MoveGroupCommander("arm")

    up_top = arf.fill_pose_stamped(0.333929986997, -0.00775843944935, 1.36268975762, -0.529421709873, 0.673007980647, -0.238763729856, 0.458000865071).pose
    apple_pose = arf.fill_pose_stamped(0.696738271836, 0.0141430927103, 0.774997458684, 0.70494542415, -0.0113359180715, 0.0117418760255, 0.709073743894).pose
    down_low = arf.fill_pose_stamped(0.334011478975, -0.0075721884172, 1.36259264914, -0.529163764273, 0.673249198282, -0.238900098736, 0.457873312628).pose
    close_to_apple = arf.fill_pose_stamped(0.723647664107, -0.0174719277117, 1.0161340941, -0.44066149931, 0.286331143742, 0.325645149208, 0.785994373992).pose
    even_closer_to_apple = arf.fill_pose_stamped(0.6296755692, -0.0468162925487, 1.02655575018, -0.597539306458, 0.39758362117, 0.3876658001, 0.578436918642)
    close_to_banana = arf.fill_pose_stamped(0.621898782615, 0.142218505018, 1.00211452973, -0.645718145491, 0.202840384379, 0.692499557478, 0.249696251357).pose


    display_trajectory_publisher = rospy.Publisher(
        '/move_group/display_planned_path',
        moveit_msgs.msg.DisplayTrajectory,
        queue_size=20)

    apple_pose = world_transform.get_model_pose("apple")
    group.set_pose_target(apple_pose)

    plan1 = group.plan()

    # display_trajectory = moveit_msgs.msg.DisplayTrajectory()
    # display_trajectory.trajectory_start = robot.get_current_state()
    # display_trajectory.trajectory.append(plan1)
    # display_trajectory_publisher.publish(display_trajectory)



    import IPython
    IPython.embed()
