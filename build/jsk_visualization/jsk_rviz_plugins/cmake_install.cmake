# Install script for directory: /home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rviz_plugins/msg" TYPE FILE FILES
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rviz_plugins/srv" TYPE FILE FILES
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/simoneforno/simon_ws/build/jsk_visualization/jsk_rviz_plugins/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsk_rviz_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/devel/include/jsk_rviz_plugins/ClassificationResultVisualizerConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsk_rviz_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/devel/include/jsk_rviz_plugins/ContactStateMarkerConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsk_rviz_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/devel/include/jsk_rviz_plugins/OverlayTextInterfaceConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/simoneforno/simon_ws/devel/lib/python2.7/dist-packages/jsk_rviz_plugins/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/jsk_rviz_plugins" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/lib/python2.7/dist-packages/jsk_rviz_plugins/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rviz_plugins/cmake" TYPE FILE FILES "/home/simoneforno/simon_ws/build/jsk_visualization/jsk_rviz_plugins/catkin_generated/installspace/jsk_rviz_plugins-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/include/jsk_rviz_plugins")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/share/roseus/ros/jsk_rviz_plugins")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/share/common-lisp/ros/jsk_rviz_plugins")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/share/gennodejs/ros/jsk_rviz_plugins")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/simoneforno/simon_ws/devel/lib/python2.7/dist-packages/jsk_rviz_plugins")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/lib/python2.7/dist-packages/jsk_rviz_plugins" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/lib/python2.7/dist-packages/jsk_rviz_plugins" FILES_MATCHING REGEX "/home/simoneforno/simon_ws/devel/lib/python2.7/dist-packages/jsk_rviz_plugins/.+/__init__.pyc?$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/simoneforno/simon_ws/build/jsk_visualization/jsk_rviz_plugins/catkin_generated/installspace/jsk_rviz_plugins.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rviz_plugins/cmake" TYPE FILE FILES "/home/simoneforno/simon_ws/build/jsk_visualization/jsk_rviz_plugins/catkin_generated/installspace/jsk_rviz_plugins-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rviz_plugins/cmake" TYPE FILE FILES
    "/home/simoneforno/simon_ws/build/jsk_visualization/jsk_rviz_plugins/catkin_generated/installspace/jsk_rviz_pluginsConfig.cmake"
    "/home/simoneforno/simon_ws/build/jsk_visualization/jsk_rviz_plugins/catkin_generated/installspace/jsk_rviz_pluginsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rviz_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rviz_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/plugin_description.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_rviz_plugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_rviz_plugins.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_rviz_plugins.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/devel/lib/libjsk_rviz_plugins.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_rviz_plugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_rviz_plugins.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_rviz_plugins.so"
         OLD_RPATH "/home/simoneforno/simon_ws/devel/lib:/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsk_rviz_plugins.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rviz_plugins" TYPE DIRECTORY FILES
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/cfg"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/icons"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/launch"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/samples"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/scripts"
    USE_SOURCE_PERMISSIONS)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsk_rviz_plugins" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/./src/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

