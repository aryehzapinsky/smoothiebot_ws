import rospy
import geometry_msgs.msg
import abc
import pyquaternion
import numpy as np
import graspit_interface.msg
#import state
#from skills import SkillManager
#TODO STEP BY STEP:
#get a launch script that launches gazebo simulator (we need it to work in gazebo)
#ROS package pr_gazebo --> github page; poke around gazebo package (try running a bunch of the scripts in there)
#need to make sure that RVIZ loads the same version of the PR2 (same model)
#once the simulation exists, you want to have your script return a list of objects (this is in this file)
#plan a grasp on one of those objects (look at HW2 -> using graspit_commander to plan a grasp) -> exists in cruimanager
#you need a ply file and import_graspable_body (function in graspit_commander)
#once you have that grasp, use curpp to convert that grasp into a moveit grasp. there is code in currp under graspit_moveit_message_utils that has code on converting graspit grasps to moveit grasps
#use curpp to execute the grasp (there is code in skills.py --> execute_grasps; ALSO make sure the object was added to the moveit_scene
#ANOTHER REPO TO LOOK AT: github.com/CRLab/world_manager -> when David gets an object, he adds it to the environment through world_manager; give it a mesh, and it will automatically add it for you (#should move it up with pick(), place() it on top of the blender and release()) 

def construct_graspit_grasp(position, orientation):
    graspit_grasp_msg = graspit_interface.msg.Grasp()
    pose = geometry_msgs.msg.Pose()
    pose.position = position
    pose.orientation = orientation
    graspit_grasp_msg.pose = pose
    return graspit_grasp_msg

def plan_grasps(x=0, y=0, z=0.080):
    position = geometry_msgs.msg.Point(x, y, z)

    normal_orientation = pyquaternion.Quaternion(x=0, y=0, z=0, w=1)
    rotated_orientation = pyquaternion.Quaternion(axis=[1, 0, 0], angle=np.pi/2)
    rotated_orientation = rotated_orientation * normal_orientation

    geom_orient = geometry_msgs.msg.Quaternion(x=normal_orientation[0], y=normal_orientation[1], z=normal_orientation[2], w=normal_orientation[3])
    geom_orient_rot = geometry_msgs.msg.Quaternion(x=rotated_orientation[0], y=rotated_orientation[1], z=rotated_orientation[2], w=rotated_orientation[3])

    grasps = list()
    grasps.append(construct_graspit_grasp(position, geom_orient))
    grasps.append(construct_graspit_grasp(position, geom_orient_rot))

    return grasps
def select_block():
    # type: (state.CRUIState, curpp.skills.SkillManager) -> ()
    rospy.loginfo("Entering select_block")
    # Assign currently selected block to variable
 #   skill = SkillManager()
    detected_objects = run_recognition()
    return detected_objects

def run_recognition():
	# return detected blocks for fixed locations of fruits
        rospy.loginfo("Running recognition")

        #self.world_manager_client.clear_objects()
	
	#make a python list with the positions of block_recognition

	obj1 = geometry_msgs.msg.PoseStamped()
	obj1.pose.position.x = 100
	obj1.pose.position.y = 100
	obj1.pose.position.z = 100
	obj1.pose.orientation.x = 0
	obj1.pose.orientation.y = 0
	obj1.pose.orientation.z = 0
	obj1.pose.orientation.w = 0
	#obj2 = geometry_msg.msg.PoseStamped()
        detected_blocks = []
	detected_blocks.append(obj1)

	#block_recognition.find_blocks()
        # type: detected_blocks -> typing.List[block_recognition_msgs.msg.DetectedBlock]
	#import geometry_msg.msg 
	#pose_stamped = geometry_msg.msg.PoseStamped().pose.position.x
        if len(detected_blocks) == 0:
            rospy.loginfo("Detected no blocks. No work done.")
            return []

        rospy.loginfo("Detected {} blocks".format(len(detected_blocks)))

     #   for detected_block in detected_blocks:
            # Add all blocks to the scene
     #       self.world_manager_client.add_box(detected_block.unique_block_name,
      #                                        detected_block.pose_stamped,
       #                                       detected_block.edge_length,
        #                                      detected_block.edge_length,
         #                                     detected_block.edge_length)

        # Return all detected blocks
        return detected_blocks

if __name__ =="__main__":
	detected_blocks = select_block()
	
	#plan grasp reachability
	for block in detected_blocks:
		plan_grasps(block.pose.position.x, block.pose.position.y, block.pose.position.z)

	
 
	
	#construct_graspit_grasp()	
	#check if grasp is reachable using skillmanager.analyze_grasp_reachability

