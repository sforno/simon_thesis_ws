# Install script for directory: /home/simoneforno/simon_ws/src/navigation_2d/nav2d_navigator

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav2d_navigator/action" TYPE FILE FILES
    "/home/simoneforno/simon_ws/src/navigation_2d/nav2d_navigator/action/Explore.action"
    "/home/simoneforno/simon_ws/src/navigation_2d/nav2d_navigator/action/GetFirstMap.action"
    "/home/simoneforno/simon_ws/src/navigation_2d/nav2d_navigator/action/Localize.action"
    "/home/simoneforno/simon_ws/src/navigation_2d/nav2d_navigator/action/MoveToPosition2D.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav2d_navigator/msg" TYPE FILE FILES
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/ExploreAction.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/ExploreActionGoal.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/ExploreActionResult.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/ExploreActionFeedback.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/ExploreGoal.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/ExploreResult.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/ExploreFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav2d_navigator/msg" TYPE FILE FILES
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/GetFirstMapAction.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/GetFirstMapActionGoal.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/GetFirstMapActionResult.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/GetFirstMapActionFeedback.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/GetFirstMapGoal.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/GetFirstMapResult.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/GetFirstMapFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav2d_navigator/msg" TYPE FILE FILES
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/LocalizeAction.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/LocalizeActionGoal.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/LocalizeActionResult.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/LocalizeActionFeedback.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/LocalizeGoal.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/LocalizeResult.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/LocalizeFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav2d_navigator/msg" TYPE FILE FILES
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/MoveToPosition2DAction.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/MoveToPosition2DActionGoal.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/MoveToPosition2DActionResult.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/MoveToPosition2DActionFeedback.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/MoveToPosition2DGoal.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/MoveToPosition2DResult.msg"
    "/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg/MoveToPosition2DFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav2d_navigator/cmake" TYPE FILE FILES "/home/simoneforno/simon_ws/build/navigation_2d/nav2d_navigator/catkin_generated/installspace/nav2d_navigator-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/include/nav2d_navigator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/share/roseus/ros/nav2d_navigator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/share/common-lisp/ros/nav2d_navigator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/share/gennodejs/ros/nav2d_navigator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/simoneforno/simon_ws/devel/lib/python2.7/dist-packages/nav2d_navigator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/devel/lib/python2.7/dist-packages/nav2d_navigator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/simoneforno/simon_ws/build/navigation_2d/nav2d_navigator/catkin_generated/installspace/nav2d_navigator.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav2d_navigator/cmake" TYPE FILE FILES "/home/simoneforno/simon_ws/build/navigation_2d/nav2d_navigator/catkin_generated/installspace/nav2d_navigator-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav2d_navigator/cmake" TYPE FILE FILES
    "/home/simoneforno/simon_ws/build/navigation_2d/nav2d_navigator/catkin_generated/installspace/nav2d_navigatorConfig.cmake"
    "/home/simoneforno/simon_ws/build/navigation_2d/nav2d_navigator/catkin_generated/installspace/nav2d_navigatorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav2d_navigator" TYPE FILE FILES "/home/simoneforno/simon_ws/src/navigation_2d/nav2d_navigator/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/build/navigation_2d/nav2d_navigator/CMakeFiles/CMakeRelink.dir/libRobotNavigator.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/simoneforno/simon_ws/devel/lib/libMapInflationTool.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/nav2d_navigator" TYPE EXECUTABLE FILES "/home/simoneforno/simon_ws/build/navigation_2d/nav2d_navigator/CMakeFiles/CMakeRelink.dir/navigator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/nav2d_navigator" TYPE EXECUTABLE FILES "/home/simoneforno/simon_ws/build/navigation_2d/nav2d_navigator/CMakeFiles/CMakeRelink.dir/set_goal_client")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/nav2d_navigator" TYPE EXECUTABLE FILES "/home/simoneforno/simon_ws/build/navigation_2d/nav2d_navigator/CMakeFiles/CMakeRelink.dir/explore_client")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/nav2d_navigator" TYPE EXECUTABLE FILES "/home/simoneforno/simon_ws/build/navigation_2d/nav2d_navigator/CMakeFiles/CMakeRelink.dir/get_map_client")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/nav2d_navigator" TYPE EXECUTABLE FILES "/home/simoneforno/simon_ws/build/navigation_2d/nav2d_navigator/CMakeFiles/CMakeRelink.dir/localize_client")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/nav2d_navigator" TYPE DIRECTORY FILES "/home/simoneforno/simon_ws/src/navigation_2d/nav2d_navigator/include/nav2d_navigator/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

