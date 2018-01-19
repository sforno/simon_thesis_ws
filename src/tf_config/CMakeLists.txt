cmake_minimum_required(VERSION 2.8.3)
project(tf_config)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  rospy
  tf
)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES tf_config
#  CATKIN_DEPENDS geometry_msgs roscpp rospy tf
#  DEPENDS system_lib
)


include_directories(
  ${catkin_INCLUDE_DIRS}
)



add_executable(tf_broadcaster src/tf_broadcaster.cpp)
add_executable(tf_broadcaster_car src/tf_broadcaster_car.cpp)
add_executable(tf_listener src/tf_listener.cpp)
target_link_libraries(tf_broadcaster_car ${catkin_LIBRARIES})
target_link_libraries(tf_broadcaster ${catkin_LIBRARIES})
target_link_libraries(tf_listener ${catkin_LIBRARIES})
