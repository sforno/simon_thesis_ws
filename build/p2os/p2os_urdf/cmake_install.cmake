# Install script for directory: /home/simoneforno/simon_ws/src/p2os/p2os_urdf

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/simoneforno/simon_ws/build/p2os/p2os_urdf/catkin_generated/installspace/p2os_urdf.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/p2os_urdf/cmake" TYPE FILE FILES
    "/home/simoneforno/simon_ws/build/p2os/p2os_urdf/catkin_generated/installspace/p2os_urdfConfig.cmake"
    "/home/simoneforno/simon_ws/build/p2os/p2os_urdf/catkin_generated/installspace/p2os_urdfConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/p2os_urdf" TYPE FILE FILES "/home/simoneforno/simon_ws/src/p2os/p2os_urdf/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/p2os_urdf" TYPE EXECUTABLE FILES "/home/simoneforno/simon_ws/build/p2os/p2os_urdf/CMakeFiles/CMakeRelink.dir/p2os_publisher")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/p2os_urdf" TYPE EXECUTABLE FILES "/home/simoneforno/simon_ws/build/p2os/p2os_urdf/CMakeFiles/CMakeRelink.dir/p2os_publisher_3at")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/p2os_urdf" TYPE EXECUTABLE FILES "/home/simoneforno/simon_ws/build/p2os/p2os_urdf/CMakeFiles/CMakeRelink.dir/p2os_publisher_3dx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/p2os_urdf" TYPE DIRECTORY FILES
    "/home/simoneforno/simon_ws/src/p2os/p2os_urdf/launch"
    "/home/simoneforno/simon_ws/src/p2os/p2os_urdf/defs"
    "/home/simoneforno/simon_ws/src/p2os/p2os_urdf/meshes"
    "/home/simoneforno/simon_ws/src/p2os/p2os_urdf/models"
    )
endif()

