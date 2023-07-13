# Install script for directory: /home/ubuntu/ros_ugv_ultron/ultron_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/ros_ugv_ultron/ultron_ws/install")
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
   "/home/ubuntu/ros_ugv_ultron/ultron_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/ros_ugv_ultron/ultron_ws/install" TYPE PROGRAM FILES "/home/ubuntu/ros_ugv_ultron/ultron_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/ros_ugv_ultron/ultron_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/ros_ugv_ultron/ultron_ws/install" TYPE PROGRAM FILES "/home/ubuntu/ros_ugv_ultron/ultron_ws/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/ros_ugv_ultron/ultron_ws/install/setup.bash;/home/ubuntu/ros_ugv_ultron/ultron_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/ros_ugv_ultron/ultron_ws/install" TYPE FILE FILES
    "/home/ubuntu/ros_ugv_ultron/ultron_ws/build/catkin_generated/installspace/setup.bash"
    "/home/ubuntu/ros_ugv_ultron/ultron_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/ros_ugv_ultron/ultron_ws/install/setup.sh;/home/ubuntu/ros_ugv_ultron/ultron_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/ros_ugv_ultron/ultron_ws/install" TYPE FILE FILES
    "/home/ubuntu/ros_ugv_ultron/ultron_ws/build/catkin_generated/installspace/setup.sh"
    "/home/ubuntu/ros_ugv_ultron/ultron_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/ros_ugv_ultron/ultron_ws/install/setup.zsh;/home/ubuntu/ros_ugv_ultron/ultron_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/ros_ugv_ultron/ultron_ws/install" TYPE FILE FILES
    "/home/ubuntu/ros_ugv_ultron/ultron_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/ubuntu/ros_ugv_ultron/ultron_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu/ros_ugv_ultron/ultron_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ubuntu/ros_ugv_ultron/ultron_ws/install" TYPE FILE FILES "/home/ubuntu/ros_ugv_ultron/ultron_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/gtest/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/demos/dnn_rotate/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/demos/docking/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/demos/fiducial_follow/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_geotiff_launch/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_slam/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_slam_launch/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/magni_robot/magni_bringup/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/magni_robot/magni_demos/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/magni_robot/magni_description/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/magni_robot/magni_desktop/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/magni_robot/magni_gazebo/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/demos/magni_lidar/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/magni_robot/magni_nav/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/magni_robot/magni_robot/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/magni_robot/magni_teleop/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/magni_robot/magni_viz/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/demos/move_demo/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/navigation/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/rosserial_arduino/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/slam_gmapping/slam_gmapping/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_map_tools/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_nav_msgs/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/connect/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_geotiff/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_geotiff_plugins/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_marker_drawing/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/map_server/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_compressed_map_transport/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/pi_sonar/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/raspicam_node/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/amcl/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/slam_gmapping/gmapping/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_imu_attitude_to_tf/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_imu_tools/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_map_server/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_trajectory_server/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/fake_localization/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/hector_slam/hector_mapping/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/ubiquity_motor/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/ultron/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/using_markers/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/voxel_grid/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/costmap_2d/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/nav_core/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/base_local_planner/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/carrot_planner/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/clear_costmap_recovery/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/dwa_local_planner/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/move_slow_and_clear/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/navfn/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/global_planner/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/rotate_recovery/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/navigation/move_base/cmake_install.cmake")
  include("/home/ubuntu/ros_ugv_ultron/ultron_ws/build/ydlidar_ros/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ubuntu/ros_ugv_ultron/ultron_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
