# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jsk_rviz_plugins: 8 messages, 3 services")

set(MSG_I_FLAGS "-Ijsk_rviz_plugins:/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jsk_rviz_plugins_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg" NAME_WE)
add_custom_target(_jsk_rviz_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rviz_plugins" "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg" ""
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg" NAME_WE)
add_custom_target(_jsk_rviz_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rviz_plugins" "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg" NAME_WE)
add_custom_target(_jsk_rviz_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rviz_plugins" "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg" ""
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg" NAME_WE)
add_custom_target(_jsk_rviz_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rviz_plugins" "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg" "std_msgs/ColorRGBA:geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg" NAME_WE)
add_custom_target(_jsk_rviz_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rviz_plugins" "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg" ""
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv" NAME_WE)
add_custom_target(_jsk_rviz_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rviz_plugins" "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv" ""
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv" NAME_WE)
add_custom_target(_jsk_rviz_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rviz_plugins" "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv" "jsk_rviz_plugins/TransformableMarkerOperate"
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg" NAME_WE)
add_custom_target(_jsk_rviz_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rviz_plugins" "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg" "std_msgs/ColorRGBA:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:jsk_rviz_plugins/Pictogram:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg" NAME_WE)
add_custom_target(_jsk_rviz_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rviz_plugins" "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg" "std_msgs/ColorRGBA"
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv" NAME_WE)
add_custom_target(_jsk_rviz_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rviz_plugins" "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv" ""
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg" NAME_WE)
add_custom_target(_jsk_rviz_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rviz_plugins" "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_cpp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_cpp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_cpp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_cpp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_cpp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_cpp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_cpp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
)

### Generating Services
_generate_srv_cpp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_srv_cpp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_srv_cpp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
)

### Generating Module File
_generate_module_cpp(jsk_rviz_plugins
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jsk_rviz_plugins_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jsk_rviz_plugins_generate_messages jsk_rviz_plugins_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_cpp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_cpp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_cpp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_cpp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_cpp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_cpp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_cpp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_cpp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_cpp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_cpp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_cpp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_rviz_plugins_gencpp)
add_dependencies(jsk_rviz_plugins_gencpp jsk_rviz_plugins_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_rviz_plugins_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_eus(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_eus(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_eus(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_eus(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_eus(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_eus(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_eus(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
)

### Generating Services
_generate_srv_eus(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_srv_eus(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_srv_eus(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
)

### Generating Module File
_generate_module_eus(jsk_rviz_plugins
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jsk_rviz_plugins_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jsk_rviz_plugins_generate_messages jsk_rviz_plugins_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_eus _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_eus _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_eus _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_eus _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_eus _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_eus _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_eus _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_eus _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_eus _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_eus _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_eus _jsk_rviz_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_rviz_plugins_geneus)
add_dependencies(jsk_rviz_plugins_geneus jsk_rviz_plugins_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_rviz_plugins_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_lisp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_lisp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_lisp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_lisp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_lisp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_lisp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_lisp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
)

### Generating Services
_generate_srv_lisp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_srv_lisp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_srv_lisp(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
)

### Generating Module File
_generate_module_lisp(jsk_rviz_plugins
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jsk_rviz_plugins_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jsk_rviz_plugins_generate_messages jsk_rviz_plugins_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_lisp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_lisp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_lisp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_lisp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_lisp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_lisp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_lisp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_lisp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_lisp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_lisp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_lisp _jsk_rviz_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_rviz_plugins_genlisp)
add_dependencies(jsk_rviz_plugins_genlisp jsk_rviz_plugins_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_rviz_plugins_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_nodejs(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_nodejs(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_nodejs(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_nodejs(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_nodejs(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_nodejs(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_nodejs(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
)

### Generating Services
_generate_srv_nodejs(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_srv_nodejs(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_srv_nodejs(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
)

### Generating Module File
_generate_module_nodejs(jsk_rviz_plugins
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jsk_rviz_plugins_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jsk_rviz_plugins_generate_messages jsk_rviz_plugins_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_nodejs _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_nodejs _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_nodejs _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_nodejs _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_nodejs _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_nodejs _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_nodejs _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_nodejs _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_nodejs _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_nodejs _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_nodejs _jsk_rviz_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_rviz_plugins_gennodejs)
add_dependencies(jsk_rviz_plugins_gennodejs jsk_rviz_plugins_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_rviz_plugins_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_py(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_py(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_py(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_py(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_py(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_py(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_msg_py(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
)

### Generating Services
_generate_srv_py(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_srv_py(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
)
_generate_srv_py(jsk_rviz_plugins
  "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
)

### Generating Module File
_generate_module_py(jsk_rviz_plugins
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jsk_rviz_plugins_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jsk_rviz_plugins_generate_messages jsk_rviz_plugins_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/RecordCommand.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_py _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/StringStamped.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_py _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayMenu.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_py _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/Pictogram.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_py _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/ObjectFitCommand.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_py _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/Screenshot.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_py _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/RequestMarkerOperate.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_py _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/PictogramArray.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_py _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/OverlayText.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_py _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/srv/EusCommand.srv" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_py _jsk_rviz_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg/TransformableMarkerOperate.msg" NAME_WE)
add_dependencies(jsk_rviz_plugins_generate_messages_py _jsk_rviz_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_rviz_plugins_genpy)
add_dependencies(jsk_rviz_plugins_genpy jsk_rviz_plugins_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_rviz_plugins_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rviz_plugins
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(jsk_rviz_plugins_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(jsk_rviz_plugins_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jsk_rviz_plugins
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(jsk_rviz_plugins_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(jsk_rviz_plugins_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rviz_plugins
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(jsk_rviz_plugins_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(jsk_rviz_plugins_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jsk_rviz_plugins
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(jsk_rviz_plugins_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(jsk_rviz_plugins_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rviz_plugins/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(jsk_rviz_plugins_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(jsk_rviz_plugins_generate_messages_py geometry_msgs_generate_messages_py)
endif()
