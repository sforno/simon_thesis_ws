cmake_minimum_required(VERSION 2.8.3)
project(globalplanner)

include_directories(include)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_BUILD_TYPE Debug)
## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
roscpp
rospy
std_msgs
nav_core
costmap_2d
base_local_planner
pluginlib
)
include_directories(
include
${catkin_INCLUDE_DIRS}
)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES globalplanner
  CATKIN_DEPENDS
      roscpp
      pluginlib
      costmap_2d
      base_local_planner
      nav_core
)

# message(${catkin_INCLUDE_DIRS})

add_library(globalplanner_lib SHARED
 src/globalplanner.cpp
)

# add_dependencies(set_global_planner ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Declare a C++ executable
# add_executable(set_global_planner_node src/set_global_planner_node.cpp)

# add_dependencies(set_global_planner_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

target_link_libraries(globalplanner_lib
 ${catkin_LIBRARIES}
)

target_include_directories(globalplanner_lib PRIVATE include)
target_include_directories(globalplanner_lib PRIVATE src)
