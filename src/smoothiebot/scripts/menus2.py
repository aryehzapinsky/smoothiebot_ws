#!bin

import rospy
import geometry_msgs.msg
import abc
import pyquaternion
import numpy as np
import graspit_interface.msg
import curpp
import tf
import moveit_commander
import world_manager
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

class GraspManager:

    def __init__(self):

        # Initialize publishers

        # Pull all params off param server
        self.grasp_approach_tran_frame = rospy.get_param("grasp_approach_tran_frame")

        self.world_frame = rospy.get_param("world_frame")

        self.arm_move_group_name = rospy.get_param("arm_move_group_name")

        self.gripper_move_group_name = rospy.get_param("gripper_move_group_name")


        self.analyzer_planner_id = rospy.get_param("analyzer_planner_id")

        self.executor_planner_id = rospy.get_param("executor_planner_id")

        self.allowed_analyzing_time = rospy.get_param("allowed_analyzing_time")

        self.allowed_execution_time = rospy.get_param("allowed_execution_time")



        self.grasping_controller = curpp.MoveitPickPlaceInterface(
            arm_name=self.arm_move_group_name,
            gripper_name=self.gripper_move_group_name,
            grasp_approach_tran_frame=self.grasp_approach_tran_frame,
            analyzer_planner_id=self.analyzer_planner_id,
            execution_planner_id=self.executor_planner_id,
            allowed_analyzing_time=self.allowed_analyzing_time,
            allowed_execution_time=self.allowed_execution_time
        )


        self.scene = moveit_commander.PlanningSceneInterface()

        self.world_manager_client = world_manager.world_manager_client

        self.tf_listener = tf.TransformListener()

    def construct_graspit_grasp(self, position, orientation):
        graspit_grasp_msg = graspit_interface.msg.Grasp()
        pose = geometry_msgs.msg.Pose()
        pose.position = position
        pose.orientation = orientation
        graspit_grasp_msg.pose = pose
        return graspit_grasp_msg

    def plan_grasps(self, x=0, y=0, z=0.080):
        position = geometry_msgs.msg.Point(x, y, z)

        normal_orientation = pyquaternion.Quaternion(x=0, y=0, z=0, w=1)
        rotated_orientation = pyquaternion.Quaternion(axis=[1, 0, 0], angle=np.pi/2)
        rotated_orientation = rotated_orientation * normal_orientation

        geom_orient = geometry_msgs.msg.Quaternion(x=normal_orientation[0], y=normal_orientation[1], z=normal_orientation[2], w=normal_orientation[3])
        geom_orient_rot = geometry_msgs.msg.Quaternion(x=rotated_orientation[0], y=rotated_orientation[1], z=rotated_orientation[2], w=rotated_orientation[3])

        grasps = list()
        grasps.append(self.construct_graspit_grasp(position, geom_orient))
        grasps.append(self.construct_graspit_grasp(position, geom_orient_rot))

        return grasps

    def select_block(self):
    # type: (state.CRUIState, curpp.skills.SkillManager) -> ()
        rospy.loginfo("Entering select_block")
    # Assign currently selected block to variable
 #   skill = SkillManager()

        apple_pose_stamped = self.fill_pose_stamped(.4, .2, .5, 0, 0, 0, 1.0)
        self.world_manager_client.add_mesh("apple", mesh_filepath='/home/student/smoothiebot_ws/FruitPlys/apple.ply', pose_stamped=apple_pose_stamped)

        banana_pose_stamped = self.fill_pose_stamped(.4, -.2, .5, 0, 0, 0, 1.0)
        self.world_manager_client.add_mesh("banana", mesh_filepath='/home/student/smoothiebot_ws/FruitPlys/banana.ply', pose_stamped=banana_pose_stamped)


        detected_objects = [("apple", apple_pose_stamped), ("banana", banana_pose_stamped)]
        return detected_objects

    def fill_pose_stamped(self, x, y, z, ox, oy, oz, ow):
	# return detected blocks for fixed locations of fruits
            rospy.loginfo("Running recognition")

        #self.world_manager_client.clear_objects()

	#make a python list with the positions of block_recognition

	    obj1 = geometry_msgs.msg.PoseStamped()
	    obj1.header.frame_id = "base_link"
	    obj1.pose.position.x = x
	    obj1.pose.position.y = y
	    obj1.pose.position.z = z
	    obj1.pose.orientation.x = ox
	    obj1.pose.orientation.y = oy
	    obj1.pose.orientation.z = oz
	    obj1.pose.orientation.w = ow

	#block_recognition.find_blocks()
        # type: detected_blocks -> typing.List[block_recognition_msgs.msg.DetectedBlock]
	#import geometry_msg.msg
	#pose_stamped = geometry_msg.msg.PoseStamped().pose.position.x

#        rospy.loginfo("Detected {} blocks".format(len(detected_blocks)))

     #   for detected_block in detected_blocks:
            # Add all blocks to the scene
     #       self.world_manager_client.add_box(detected_block.unique_block_name,
      #                                        detected_block.pose_stamped,
       #                                       detected_block.edge_length,
        #                                      detected_block.edge_length,
         #                                     detected_block.edge_length)

        # Return all detected blocks
            return obj1

    def graspit_grasp_to_moveit_grasp(self, object_name, graspit_grasp):
        # type: (str, graspit_interface.msg.Grasp) -> moveit_msgs.msg.Grasp

        pre_grasp_approach_direction = geometry_msgs.msg.Vector3Stamped()
        pre_grasp_approach_direction.header.frame_id = rospy.get_param("pre_grasp_approach_direction_frame_id")
        pre_grasp_approach_direction.vector.x = rospy.get_param("pre_grasp_approach_direction_x")
        pre_grasp_approach_direction.vector.y = rospy.get_param("pre_grasp_approach_direction_y")
        pre_grasp_approach_direction.vector.z = rospy.get_param("pre_grasp_approach_direction_z")

        post_grasp_retreat_direction = geometry_msgs.msg.Vector3Stamped()
        post_grasp_retreat_direction.header.frame_id = rospy.get_param("post_grasp_retreat_direction_frame_id")
        post_grasp_retreat_direction.vector.x = rospy.get_param("post_grasp_retreat_direction_x")
        post_grasp_retreat_direction.vector.y = rospy.get_param("post_grasp_retreat_direction_y")
        post_grasp_retreat_direction.vector.z = rospy.get_param("post_grasp_retreat_direction_z")

        grasp_approach_tran_frame = rospy.get_param("grasp_approach_tran_frame")

        moveit_grasp_msg = curpp.graspit_grasp_to_moveit_grasp(
            object_name=object_name,
            graspit_grasp_msg=graspit_grasp,
            listener=self.tf_listener,
            grasp_tran_frame_name=grasp_approach_tran_frame,
            end_effector_link=self.grasping_controller.get_end_effector_link(),

            pre_grasp_goal_point_effort=rospy.get_param("pre_grasp_goal_point_effort"),
            pre_grasp_goal_point_positions=rospy.get_param("pre_grasp_goal_point_positions"),
            pre_grasp_goal_point_time_from_start_secs=rospy.get_param("pre_grasp_goal_point_time_from_start_secs"),
            pre_grasp_joint_names=rospy.get_param("pre_grasp_joint_names"),

            grasp_goal_point_effort=rospy.get_param("grasp_goal_point_effort"),
            grasp_goal_point_positions=rospy.get_param("grasp_goal_point_positions"),
            grasp_goal_point_time_from_start_secs=rospy.get_param("grasp_goal_point_time_from_start_secs"),

            grasp_posture_joint_names=rospy.get_param("grasp_posture_joint_names"),

            pre_grasp_approach_min_distance=rospy.get_param("pre_grasp_approach_min_distance"),
            pre_grasp_approach_desired_distance=rospy.get_param("pre_grasp_approach_desired_distance"),
            pre_grasp_approach_direction=pre_grasp_approach_direction,

            post_grasp_retreat_min_distance=rospy.get_param("post_grasp_retreat_min_distance"),
            post_grasp_retreat_desired_distance=rospy.get_param("post_grasp_retreat_desired_distance"),
            post_grasp_retreat_direction=post_grasp_retreat_direction,

            max_contact_force=rospy.get_param("max_contact_force")
        )

        return moveit_grasp_msg

    def analyze_grasp_reachability(self, object_name, graspit_grasp):
        # type: (str, graspit_interface.msg.Grasp) -> (moveit_msgs.msg.PickupResult, bool)
        """
        @return: Whether the grasp is expected to succeed
        """
        # Convert graspit grasp to moveit grasp
        rospy.loginfo("Analyzing grasp for object: {}".format(object_name))

        block_names = self.scene.get_attached_objects().keys()
        self.grasping_controller.detach_all_blocks(block_names)
        moveit_grasp_msg = self.graspit_grasp_to_moveit_grasp(object_name, graspit_grasp)
	print(moveit_grasp_msg)
        success, pick_result = self.grasping_controller.analyze_moveit_grasp(object_name, moveit_grasp_msg)

        rospy.loginfo("Able to execute grasp with grasp id {} after analysis: {}".format(moveit_grasp_msg.id, success))

        return pick_result, success

    def execute_grasp(self, object_name, graspit_grasp, place_position=None):
        # type: (str, graspit_interface.msg.Grasp) -> bool
        rospy.loginfo("Executing grasp goal")

        block_names = self.scene.get_attached_objects().keys()
        self.grasping_controller.detach_all_blocks(block_names)

        # Acquire block position for place
        objects = self.scene.get_object_poses([object_name])
        if object_name not in objects:
            rospy.logerr("Object {} not in planning scene. Execute grasp failed".format(object_name))
            return False

        block_pose_stamped = geometry_msgs.msg.PoseStamped()
        block_pose_stamped.pose = objects[object_name]
        block_pose_stamped.header.frame_id = self.grasping_controller.get_planning_frame()

        rospy.loginfo("Object {} in planning scene. Pose: {}".format(object_name, block_pose_stamped.pose))

        # Shift block pose to place location in param server
        if place_position is not None:
            block_pose_stamped.pose.position.x = rospy.get_param("final_block_position_x")
            block_pose_stamped.pose.position.y = rospy.get_param("final_block_position_y")
            block_pose_stamped.pose.position.z = rospy.get_param("final_block_position_z")
        else:
            block_pose_stamped.pose.position = place_position

        # Convert graspit grasp to moveit grasp
        moveit_grasp_msg = self.graspit_grasp_to_moveit_grasp(object_name, graspit_grasp)

        # Execute pick on block
        success, pick_result = self.grasping_controller.execute_moveit_grasp(object_name, moveit_grasp_msg)
        # type: pick_result -> moveit_msgs.msg.PickupResult

        if not success:
            error_code = curpp.moveit_error_code_to_string(pick_result.error_code)
            rospy.logerr("Failed to execute pick. Reason: {}".format(error_code))
            return False
        else:
            rospy.loginfo("Successfully executed pick")

        rospy.loginfo("Placing block as position ({}, {}, {})"
                      .format(block_pose_stamped.pose.position.x,
                              block_pose_stamped.pose.position.y,
                              block_pose_stamped.pose.position.z))
        # Execute place on block
        success, place_result = self.grasping_controller.place(object_name, pick_result, block_pose_stamped)

        if not success:
            error_code = curpp.moveit_error_code_to_string(place_result.error_code)
            rospy.logerr("Failed to execute place. Reason: {}".format(error_code))
            return False
        else:
            rospy.loginfo("Successfully executed place")

        # Home arm and open hand
        success = self.grasping_controller.home_arm()
        if not success:
            rospy.logerr("Failed to home arm")
            return False
        else:
            rospy.loginfo("Successfully homed arm")

        success = self.grasping_controller.open_hand()
        if not success:
            rospy.logerr("Failed to open hand")
            return False
        else:
            rospy.loginfo("Successfully opened hand")

        return True

if __name__ =="__main__":
        rospy.init_node("base")
	manager = GraspManager()
	#import IPython
	#IPython.embed()
	detected_blocks = manager.scene.get_object_poses(manager.scene.get_known_object_names())
	print(detected_blocks.values()[0])
#	print(type(detected_blocks.values()[0]))
	#plan grasp reachability
	for block, val in detected_blocks.items():
		grasps = manager.plan_grasps(val.position.x, val.position.y, val.position.z)
		print("GRASPS", grasps)
		manager.analyze_grasp_reachability(block, grasps[0])



	#construct_graspit_grasp()
	#check if grasp is reachable using skillmanager.analyze_grasp_reachability
