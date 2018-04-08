import rospy
import geometry_msgs.msg
import abc
#import state
#from skills import SkillManager
#TODO STEP BY STEP:
#get a launch script that launches gazebo simulator (we need it to work in gazebo)
#ROS package pr_gazebo --> github page; poke around gazebo package (try running a bunch of the scripts in there)
#need to make sure that RVIZ loads the same version of the PR2 (same model)
#once the simulation exists, you want to have your script return a list of objects (this is in this file)
#plan a grasp on one of those objects (look at HW2 -> using graspit_commander to plan a grasp)
#you need a ply file and import_graspable_body (function in graspit_commander)
#once you have that grasp, use curpp to convert that grasp into a moveit grasp. there is code in currp under graspit_moveit_message_utils that has code on converting graspit grasps to moveit grasps
#use curpp to execute the grasp (there is code in skills.py --> execute_grasps; ALSO make sure the object was added to the moveit_scene
#ANOTHER REPO TO LOOK AT: github.com/CRLab/world_manager -> when David gets an object, he adds it to the environment through world_manager; give it a mesh, and it will automatically add it for you (#should move it up with pick(), place() it on top of the blender and release()) 

def select_block():
    # type: (state.CRUIState, curpp.skills.SkillManager) -> ()
    rospy.loginfo("Entering select_block")
    # Assign currently selected block to variable
 #   skill = SkillManager()
    detected_object = run_recognition()
    print(detected_object) 

def run_recognition():
	# return detected blocks for fixed locations of fruits
        rospy.loginfo("Running recognition")

        #self.world_manager_client.clear_objects()
	
	#make a python list with the positions of block_recognition

	obj1 = geometry_msgs.msg.PoseStamped()
	obj1.pose.position.x = 100
	obj1.pose.position.y = 100
	obj1.pose.position.z = 100
	obj1.pose.orientation.x = 100
	obj1.pose.orientation.y = 100
	obj1.pose.orientation.z = 100
	obj1.pose.orientation.w = 100
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
	select_block()
