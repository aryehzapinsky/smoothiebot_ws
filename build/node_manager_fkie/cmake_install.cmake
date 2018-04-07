# Install script for directory: /home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie

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
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/student/smoothiebot_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/student/smoothiebot_ws/install" TYPE PROGRAM FILES "/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/student/smoothiebot_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/student/smoothiebot_ws/install" TYPE PROGRAM FILES "/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/student/smoothiebot_ws/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/student/smoothiebot_ws/install" TYPE FILE FILES "/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/student/smoothiebot_ws/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/student/smoothiebot_ws/install" TYPE FILE FILES "/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/student/smoothiebot_ws/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/student/smoothiebot_ws/install" TYPE FILE FILES "/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/student/smoothiebot_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/student/smoothiebot_ws/install" TYPE FILE FILES "/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/installspace/node_manager_fkie.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/node_manager_fkie/cmake" TYPE FILE FILES
    "/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/installspace/node_manager_fkieConfig.cmake"
    "/home/student/smoothiebot_ws/build/node_manager_fkie/catkin_generated/installspace/node_manager_fkieConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/node_manager_fkie" TYPE FILE FILES "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/node_manager_fkie" TYPE PROGRAM FILES
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/nodes/dynamic_reconfigure"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/nodes/nm"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/nodes/node_manager"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/nodes/script_runner.py"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/scripts/reduced_nm.py"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/scripts/remote_nm.py"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/scripts/respawn"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/node_manager_fkie" TYPE DIRECTORY FILES
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/images"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/rqt_icons"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/node_manager_fkie" TYPE FILE FILES
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/README.rst"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/plugin.xml"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/node_manager_fkie" TYPE FILE FILES
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/src/node_manager_fkie/EchoDialog.ui"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/src/node_manager_fkie/GUI.qrc"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/src/node_manager_fkie/LaunchFilesDockWidget.ui"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/src/node_manager_fkie/LogDockWidget.ui"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/src/node_manager_fkie/MainWindow.ui"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/src/node_manager_fkie/MasterTab.ui"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/src/node_manager_fkie/PasswordInput.ui"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/src/node_manager_fkie/ProfileWidget.ui"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/src/node_manager_fkie/SettingsDockWidget.ui"
    "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/src/node_manager_fkie/TimeInput.ui"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/node_manager_fkie/editor" TYPE FILE FILES "/home/student/smoothiebot_ws/src/multimaster_fkie/node_manager_fkie/src/node_manager_fkie/editor/GraphDockWidget.ui")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/student/smoothiebot_ws/build/node_manager_fkie/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/student/smoothiebot_ws/build/node_manager_fkie/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
