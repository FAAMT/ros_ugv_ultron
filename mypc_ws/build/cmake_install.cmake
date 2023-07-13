# Install script for directory: /home/faamt/ros_ugv_ultron/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/faamt/ros_ugv_ultron/install")
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
   "/home/faamt/ros_ugv_ultron/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/faamt/ros_ugv_ultron/install" TYPE PROGRAM FILES "/home/faamt/ros_ugv_ultron/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/faamt/ros_ugv_ultron/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/faamt/ros_ugv_ultron/install" TYPE PROGRAM FILES "/home/faamt/ros_ugv_ultron/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/faamt/ros_ugv_ultron/install/setup.bash;/home/faamt/ros_ugv_ultron/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/faamt/ros_ugv_ultron/install" TYPE FILE FILES
    "/home/faamt/ros_ugv_ultron/build/catkin_generated/installspace/setup.bash"
    "/home/faamt/ros_ugv_ultron/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/faamt/ros_ugv_ultron/install/setup.sh;/home/faamt/ros_ugv_ultron/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/faamt/ros_ugv_ultron/install" TYPE FILE FILES
    "/home/faamt/ros_ugv_ultron/build/catkin_generated/installspace/setup.sh"
    "/home/faamt/ros_ugv_ultron/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/faamt/ros_ugv_ultron/install/setup.zsh;/home/faamt/ros_ugv_ultron/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/faamt/ros_ugv_ultron/install" TYPE FILE FILES
    "/home/faamt/ros_ugv_ultron/build/catkin_generated/installspace/setup.zsh"
    "/home/faamt/ros_ugv_ultron/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/faamt/ros_ugv_ultron/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/faamt/ros_ugv_ultron/install" TYPE FILE FILES "/home/faamt/ros_ugv_ultron/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/faamt/ros_ugv_ultron/build/gtest/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/exmachina/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_geotiff_launch/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_slam/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_slam_launch/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/joint_state_publisher/joint_state_publisher_gui/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_arduino/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_mbed/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_msgs/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_python/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_tivac/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_vex_cortex/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_vex_v5/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_xbee/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_client/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_map_tools/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_nav_msgs/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/stdr_simulator/stdr_launchers/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/stdr_simulator/stdr_msgs/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/stdr_simulator/stdr_resources/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/stdr_simulator/stdr_simulator/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/ultron/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/connect/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_geotiff/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_geotiff_plugins/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_marker_drawing/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/joint_state_publisher/joint_state_publisher/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/stdr_simulator/stdr_parser/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_server/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_compressed_map_transport/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/opencv/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/raspicam_node/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_imu_attitude_to_tf/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_imu_tools/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_map_server/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_trajectory_server/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/hector_slam/hector_mapping/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_embeddedlinux/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_test/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_windows/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/stdr_simulator/stdr_robot/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/stdr_simulator/stdr_samples/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/stdr_simulator/stdr_server/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/stdr_simulator/stdr_gui/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/ultron_desc/cmake_install.cmake")
  include("/home/faamt/ros_ugv_ultron/build/ydlidar_ros/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/faamt/ros_ugv_ultron/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
