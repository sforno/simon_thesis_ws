cmake_minimum_required(VERSION 2.8.3)
project(simple_navigation_goals)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  move_base_msgs 
  actionlib
)
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES encoder_ll
#  CATKIN_DEPENDS ropy roscpp std_msgs
#  DEPENDS system_lib
)

# include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ executable
add_executable(simple_navigation_goals src/simple_navigation_goals.cpp)


## Specify libraries to link a library or executable target against
target_link_libraries(simple_navigation_goals
   ${catkin_LIBRARIES}
 )