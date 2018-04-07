execute_process(COMMAND "/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
