# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_mid360: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imy_mid360:/home/yuanyuan/Documents/homework/src/my_mid360/msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_mid360_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg" NAME_WE)
add_custom_target(_my_mid360_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_mid360" "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg" "my_mid360/CustomPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg" NAME_WE)
add_custom_target(_my_mid360_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_mid360" "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_mid360
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_mid360
)
_generate_msg_cpp(my_mid360
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_mid360
)

### Generating Services

### Generating Module File
_generate_module_cpp(my_mid360
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_mid360
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_mid360_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_mid360_generate_messages my_mid360_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg" NAME_WE)
add_dependencies(my_mid360_generate_messages_cpp _my_mid360_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg" NAME_WE)
add_dependencies(my_mid360_generate_messages_cpp _my_mid360_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_mid360_gencpp)
add_dependencies(my_mid360_gencpp my_mid360_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_mid360_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(my_mid360
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_mid360
)
_generate_msg_eus(my_mid360
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_mid360
)

### Generating Services

### Generating Module File
_generate_module_eus(my_mid360
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_mid360
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(my_mid360_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(my_mid360_generate_messages my_mid360_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg" NAME_WE)
add_dependencies(my_mid360_generate_messages_eus _my_mid360_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg" NAME_WE)
add_dependencies(my_mid360_generate_messages_eus _my_mid360_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_mid360_geneus)
add_dependencies(my_mid360_geneus my_mid360_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_mid360_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_mid360
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_mid360
)
_generate_msg_lisp(my_mid360
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_mid360
)

### Generating Services

### Generating Module File
_generate_module_lisp(my_mid360
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_mid360
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_mid360_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_mid360_generate_messages my_mid360_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg" NAME_WE)
add_dependencies(my_mid360_generate_messages_lisp _my_mid360_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg" NAME_WE)
add_dependencies(my_mid360_generate_messages_lisp _my_mid360_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_mid360_genlisp)
add_dependencies(my_mid360_genlisp my_mid360_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_mid360_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(my_mid360
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_mid360
)
_generate_msg_nodejs(my_mid360
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_mid360
)

### Generating Services

### Generating Module File
_generate_module_nodejs(my_mid360
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_mid360
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(my_mid360_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(my_mid360_generate_messages my_mid360_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg" NAME_WE)
add_dependencies(my_mid360_generate_messages_nodejs _my_mid360_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg" NAME_WE)
add_dependencies(my_mid360_generate_messages_nodejs _my_mid360_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_mid360_gennodejs)
add_dependencies(my_mid360_gennodejs my_mid360_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_mid360_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_mid360
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_mid360
)
_generate_msg_py(my_mid360
  "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_mid360
)

### Generating Services

### Generating Module File
_generate_module_py(my_mid360
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_mid360
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_mid360_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_mid360_generate_messages my_mid360_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomMsg.msg" NAME_WE)
add_dependencies(my_mid360_generate_messages_py _my_mid360_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yuanyuan/Documents/homework/src/my_mid360/msg/CustomPoint.msg" NAME_WE)
add_dependencies(my_mid360_generate_messages_py _my_mid360_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_mid360_genpy)
add_dependencies(my_mid360_genpy my_mid360_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_mid360_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_mid360)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_mid360
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(my_mid360_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(my_mid360_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(my_mid360_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_mid360)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_mid360
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(my_mid360_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(my_mid360_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(my_mid360_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_mid360)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_mid360
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(my_mid360_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(my_mid360_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(my_mid360_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_mid360)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_mid360
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(my_mid360_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(my_mid360_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(my_mid360_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_mid360)
  install(CODE "execute_process(COMMAND \"/home/yuanyuan/anaconda3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_mid360\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_mid360
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(my_mid360_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(my_mid360_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(my_mid360_generate_messages_py std_msgs_generate_messages_py)
endif()
