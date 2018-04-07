# Install script for directory: /home/student/smoothiebot_ws/src/moveit/moveit_ros/planning_interface/robot_interface

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/student/smoothiebot_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/moveit_ros_planning_interface/_moveit_robot_interface.so.0.9.11"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/moveit_ros_planning_interface/_moveit_robot_interface.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/moveit_ros_planning_interface" TYPE SHARED_LIBRARY FILES
    "/home/student/smoothiebot_ws/devel/.private/moveit_ros_planning_interface/lib/python2.7/dist-packages/moveit_ros_planning_interface/_moveit_robot_interface.so.0.9.11"
    "/home/student/smoothiebot_ws/devel/.private/moveit_ros_planning_interface/lib/python2.7/dist-packages/moveit_ros_planning_interface/_moveit_robot_interface.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/moveit_ros_planning_interface/_moveit_robot_interface.so.0.9.11"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/moveit_ros_planning_interface/_moveit_robot_interface.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/student/smoothiebot_ws/devel/.private/moveit_ros_planning/lib:/home/student/smoothiebot_ws/devel/.private/moveit_core/lib:/home/student/smoothiebot_ws/devel/.private/geometric_shapes/lib:/home/student/smoothiebot_ws/devel/.private/moveit_ros_perception/lib:/home/student/smoothiebot_ws/devel/.private/moveit_ros_warehouse/lib:/home/student/smoothiebot_ws/devel/.private/moveit_ros_manipulation/lib:/home/student/smoothiebot_ws/devel/.private/moveit_ros_move_group/lib:/opt/ros/kinetic/lib:/home/student/smoothiebot_ws/devel/.private/moveit_ros_planning_interface/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

