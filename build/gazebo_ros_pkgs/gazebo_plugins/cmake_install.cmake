# Install script for directory: /home/simoneforno/simon_ws/src/gazebo_ros_pkgs/gazebo_plugins

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/simoneforno/simon_ws/install")
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
  include("/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gazebo_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/devel/include/gazebo_plugins/CameraSynchronizerConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gazebo_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/devel/include/gazebo_plugins/GazeboRosCameraConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gazebo_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/devel/include/gazebo_plugins/GazeboRosOpenniKinectConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gazebo_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/devel/include/gazebo_plugins/HokuyoConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/simoneforno/simon_ws/devel/lib/python2.7/dist-packages/gazebo_plugins/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gazebo_plugins" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/lib/python2.7/dist-packages/gazebo_plugins/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/installspace/gazebo_plugins.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_plugins/cmake" TYPE FILE FILES
    "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/installspace/gazebo_pluginsConfig.cmake"
    "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/installspace/gazebo_pluginsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/src/gazebo_ros_pkgs/gazebo_plugins/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/installspace/gazebo_plugins.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_plugins/cmake" TYPE FILE FILES
    "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/installspace/gazebo_pluginsConfig.cmake"
    "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/installspace/gazebo_pluginsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/src/gazebo_ros_pkgs/gazebo_plugins/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gazebo_plugins" TYPE EXECUTABLE FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/hokuyo_node")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libvision_reconfigure.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gazebo_plugins" TYPE EXECUTABLE FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/camera_synchronizer")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_utils.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_camera_utils.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_camera.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_multicamera.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libMultiCameraPlugin.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_depth_camera.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_openni_kinect.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_openni_kinect.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_laser.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_block_laser.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_p3d.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_imu.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_imu_sensor.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_f3d.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_ft_sensor.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_bumper.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_hand_of_god.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_template.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_projector.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_prosilica.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_force.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_joint_trajectory.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_joint_state_publisher.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_joint_pose_trajectory.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_diff_drive.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_tricycle_drive.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_skid_steer_drive.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_video.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_planar_move.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_vacuum_gripper.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gazebo_plugins" TYPE EXECUTABLE FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/pub_joint_trajectory_test")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_gpu_laser.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_range.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/gazebo_ros_pkgs/gazebo_plugins/CMakeFiles/CMakeRelink.dir/libgazebo_ros_elevator.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/src/gazebo_ros_pkgs/gazebo_plugins/include/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gazebo_plugins" TYPE PROGRAM FILES
    "/home/simoneforno/simon_ws/src/gazebo_ros_pkgs/gazebo_plugins/scripts/set_wrench.py"
    "/home/simoneforno/simon_ws/src/gazebo_ros_pkgs/gazebo_plugins/scripts/set_pose.py"
    "/home/simoneforno/simon_ws/src/gazebo_ros_pkgs/gazebo_plugins/scripts/gazebo_model"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_plugins" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/src/gazebo_ros_pkgs/gazebo_plugins/Media")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_plugins" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/src/gazebo_ros_pkgs/gazebo_plugins/test")
endif()

