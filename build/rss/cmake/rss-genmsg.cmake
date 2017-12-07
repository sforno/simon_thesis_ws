# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rss: 3 messages, 1 services")

set(MSG_I_FLAGS "-Irss:/home/simoneforno/simon_ws/src/rss/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rss_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv" NAME_WE)
add_custom_target(_rss_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rss" "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv" "rss/RssData:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseArray:rss/RssDatum:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg" NAME_WE)
add_custom_target(_rss_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rss" "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg" "rss/RssDatum"
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg" NAME_WE)
add_custom_target(_rss_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rss" "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg" ""
)

get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg" NAME_WE)
add_custom_target(_rss_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rss" "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rss
  "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss
)
_generate_msg_cpp(rss
  "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss
)
_generate_msg_cpp(rss
  "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss
)

### Generating Services
_generate_srv_cpp(rss
  "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss
)

### Generating Module File
_generate_module_cpp(rss
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rss_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rss_generate_messages rss_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv" NAME_WE)
add_dependencies(rss_generate_messages_cpp _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg" NAME_WE)
add_dependencies(rss_generate_messages_cpp _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg" NAME_WE)
add_dependencies(rss_generate_messages_cpp _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg" NAME_WE)
add_dependencies(rss_generate_messages_cpp _rss_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rss_gencpp)
add_dependencies(rss_gencpp rss_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rss_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rss
  "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss
)
_generate_msg_eus(rss
  "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss
)
_generate_msg_eus(rss
  "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss
)

### Generating Services
_generate_srv_eus(rss
  "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss
)

### Generating Module File
_generate_module_eus(rss
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rss_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rss_generate_messages rss_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv" NAME_WE)
add_dependencies(rss_generate_messages_eus _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg" NAME_WE)
add_dependencies(rss_generate_messages_eus _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg" NAME_WE)
add_dependencies(rss_generate_messages_eus _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg" NAME_WE)
add_dependencies(rss_generate_messages_eus _rss_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rss_geneus)
add_dependencies(rss_geneus rss_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rss_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rss
  "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss
)
_generate_msg_lisp(rss
  "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss
)
_generate_msg_lisp(rss
  "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss
)

### Generating Services
_generate_srv_lisp(rss
  "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss
)

### Generating Module File
_generate_module_lisp(rss
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rss_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rss_generate_messages rss_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv" NAME_WE)
add_dependencies(rss_generate_messages_lisp _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg" NAME_WE)
add_dependencies(rss_generate_messages_lisp _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg" NAME_WE)
add_dependencies(rss_generate_messages_lisp _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg" NAME_WE)
add_dependencies(rss_generate_messages_lisp _rss_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rss_genlisp)
add_dependencies(rss_genlisp rss_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rss_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rss
  "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss
)
_generate_msg_nodejs(rss
  "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss
)
_generate_msg_nodejs(rss
  "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss
)

### Generating Services
_generate_srv_nodejs(rss
  "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss
)

### Generating Module File
_generate_module_nodejs(rss
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rss_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rss_generate_messages rss_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv" NAME_WE)
add_dependencies(rss_generate_messages_nodejs _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg" NAME_WE)
add_dependencies(rss_generate_messages_nodejs _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg" NAME_WE)
add_dependencies(rss_generate_messages_nodejs _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg" NAME_WE)
add_dependencies(rss_generate_messages_nodejs _rss_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rss_gennodejs)
add_dependencies(rss_gennodejs rss_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rss_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rss
  "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss
)
_generate_msg_py(rss
  "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss
)
_generate_msg_py(rss
  "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss
)

### Generating Services
_generate_srv_py(rss
  "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv"
  "${MSG_I_FLAGS}"
  "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss
)

### Generating Module File
_generate_module_py(rss
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rss_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rss_generate_messages rss_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/srv/Localization.srv" NAME_WE)
add_dependencies(rss_generate_messages_py _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssData.msg" NAME_WE)
add_dependencies(rss_generate_messages_py _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/RssDatum.msg" NAME_WE)
add_dependencies(rss_generate_messages_py _rss_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simoneforno/simon_ws/src/rss/msg/ProbArray.msg" NAME_WE)
add_dependencies(rss_generate_messages_py _rss_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rss_genpy)
add_dependencies(rss_genpy rss_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rss_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rss_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rss_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rss_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rss_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rss_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rss_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rss_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rss_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rss_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rss_generate_messages_py geometry_msgs_generate_messages_py)
endif()
