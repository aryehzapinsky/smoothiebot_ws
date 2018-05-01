#!/usr/bin/env python

import rospy

import add_random_fruits as arf


if __name__ == "__main__":
    up_top = arf.fill_pose_stamped(0.333929986997, -0.00775843944935, 1.36268975762, -0.529421709873, 0.673007980647, -0.238763729856, 0.458000865071).pose
    apple_pose = arf.fill_pose_stamped(0.696738271836, 0.0141430927103, 0.774997458684, 0.70494542415, -0.0113359180715, 0.0117418760255, 0.709073743894).pose
    down_low = arf.fill_pose_stamped(0.334011478975, -0.0075721884172, 1.36259264914, -0.529163764273, 0.673249198282, -0.238900098736, 0.457873312628).pose

    display_trajectory = moveit_msgs.msg.DisplayTrajectory()

    display_trajectory.trajectory_start = robot.get_current_state()
    display_trajectory.trajectory.append(plan1)
    display_trajectory_publisher.publish(display_trajectory);
