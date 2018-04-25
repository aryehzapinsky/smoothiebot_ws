#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist

def rot90(duration, speed):
    tw = Twist()
    #tw.linear.x = speed
    tw.angular.z = speed
    start_time = rospy.Time.now()
    pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
    pub.publish(tw)
    execution_time = rospy.Duration(0)
    while execution_time < rospy.Duration(duration):
        execution_time = rospy.Time.now() - start_time
        print(tw)
        pub.publish(tw)

if __name__ == "__main__":
#pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
    rospy.init_node("rotation_90")

    rospy.wait_for_service("/cmd_vel_mux/add")

    print("rotating")
    rot90(10.0, 5.0)
