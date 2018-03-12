# Install script for directory: /home/simoneforno/simon_ws/src/jsk_visualization/jsk_rqt_plugins

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
  include("/home/simoneforno/simon_ws/build/jsk_visualization/jsk_rqt_plugins/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/simoneforno/simon_ws/build/jsk_visualization/jsk_rqt_plugins/catkin_generated/installspace/jsk_rqt_plugins.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rqt_plugins/cmake" TYPE FILE FILES
    "/home/simoneforno/simon_ws/build/jsk_visualization/jsk_rqt_plugins/catkin_generated/installspace/jsk_rqt_pluginsConfig.cmake"
    "/home/simoneforno/simon_ws/build/jsk_visualization/jsk_rqt_plugins/catkin_generated/installspace/jsk_rqt_pluginsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rqt_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rqt_plugins/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rqt_plugins" TYPE FILE FILES "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rqt_plugins/plugin.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/jsk_rqt_plugins" TYPE PROGRAM FILES
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rqt_plugins/bin/rqt_3d_plot"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rqt_plugins/bin/rqt_histogram_plot"
    "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rqt_plugins/bin/rqt_yn_btn"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_rqt_plugins" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rqt_plugins/resource")
endif()

