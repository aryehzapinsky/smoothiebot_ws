# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "world_manager_msgs: 2 messages, 3 services")

set(MSG_I_FLAGS "-Iworld_manager_msgs:/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(world_manager_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg" NAME_WE)
add_custom_target(_world_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_manager_msgs" "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv" NAME_WE)
add_custom_target(_world_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_manager_msgs" "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:world_manager_msgs/SceneBox:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg" NAME_WE)
add_custom_target(_world_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_manager_msgs" "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv" NAME_WE)
add_custom_target(_world_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_manager_msgs" "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv" "geometry_msgs/PoseStamped:std_msgs/Header:world_manager_msgs/SceneObject:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv" NAME_WE)
add_custom_target(_world_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_manager_msgs" "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_manager_msgs
)
_generate_msg_cpp(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_manager_msgs
)

### Generating Services
_generate_srv_cpp(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_manager_msgs
)
_generate_srv_cpp(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_manager_msgs
)
_generate_srv_cpp(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_manager_msgs
)

### Generating Module File
_generate_module_cpp(world_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(world_manager_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(world_manager_msgs_generate_messages world_manager_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_cpp _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_cpp _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_cpp _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_cpp _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_cpp _world_manager_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_manager_msgs_gencpp)
add_dependencies(world_manager_msgs_gencpp world_manager_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_manager_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_manager_msgs
)
_generate_msg_eus(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_manager_msgs
)

### Generating Services
_generate_srv_eus(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_manager_msgs
)
_generate_srv_eus(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_manager_msgs
)
_generate_srv_eus(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_manager_msgs
)

### Generating Module File
_generate_module_eus(world_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(world_manager_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(world_manager_msgs_generate_messages world_manager_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_eus _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_eus _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_eus _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_eus _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_eus _world_manager_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_manager_msgs_geneus)
add_dependencies(world_manager_msgs_geneus world_manager_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_manager_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_manager_msgs
)
_generate_msg_lisp(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_manager_msgs
)

### Generating Services
_generate_srv_lisp(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_manager_msgs
)
_generate_srv_lisp(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_manager_msgs
)
_generate_srv_lisp(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_manager_msgs
)

### Generating Module File
_generate_module_lisp(world_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(world_manager_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(world_manager_msgs_generate_messages world_manager_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_lisp _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_lisp _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_lisp _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_lisp _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_lisp _world_manager_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_manager_msgs_genlisp)
add_dependencies(world_manager_msgs_genlisp world_manager_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_manager_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_manager_msgs
)
_generate_msg_nodejs(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_manager_msgs
)

### Generating Services
_generate_srv_nodejs(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_manager_msgs
)
_generate_srv_nodejs(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_manager_msgs
)
_generate_srv_nodejs(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_manager_msgs
)

### Generating Module File
_generate_module_nodejs(world_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(world_manager_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(world_manager_msgs_generate_messages world_manager_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_nodejs _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_nodejs _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_nodejs _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_nodejs _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_nodejs _world_manager_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_manager_msgs_gennodejs)
add_dependencies(world_manager_msgs_gennodejs world_manager_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_manager_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_manager_msgs
)
_generate_msg_py(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_manager_msgs
)

### Generating Services
_generate_srv_py(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_manager_msgs
)
_generate_srv_py(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_manager_msgs
)
_generate_srv_py(world_manager_msgs
  "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_manager_msgs
)

### Generating Module File
_generate_module_py(world_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(world_manager_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(world_manager_msgs_generate_messages world_manager_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneObject.msg" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_py _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddBox.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_py _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg/SceneBox.msg" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_py _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddMesh.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_py _world_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/srv/AddTF.srv" NAME_WE)
add_dependencies(world_manager_msgs_generate_messages_py _world_manager_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_manager_msgs_genpy)
add_dependencies(world_manager_msgs_genpy world_manager_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_manager_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_manager_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_manager_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(world_manager_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(world_manager_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_manager_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_manager_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(world_manager_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(world_manager_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_manager_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_manager_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(world_manager_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(world_manager_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_manager_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_manager_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(world_manager_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(world_manager_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_manager_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_manager_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_manager_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(world_manager_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(world_manager_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
