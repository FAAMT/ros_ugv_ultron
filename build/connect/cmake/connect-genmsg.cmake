# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "connect: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iconnect:/home/faamt/ros_ugv_ultron/src/connect/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(connect_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg" NAME_WE)
add_custom_target(_connect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "connect" "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(connect
  "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/connect
)

### Generating Services

### Generating Module File
_generate_module_cpp(connect
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/connect
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(connect_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(connect_generate_messages connect_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg" NAME_WE)
add_dependencies(connect_generate_messages_cpp _connect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(connect_gencpp)
add_dependencies(connect_gencpp connect_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS connect_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(connect
  "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/connect
)

### Generating Services

### Generating Module File
_generate_module_eus(connect
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/connect
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(connect_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(connect_generate_messages connect_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg" NAME_WE)
add_dependencies(connect_generate_messages_eus _connect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(connect_geneus)
add_dependencies(connect_geneus connect_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS connect_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(connect
  "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/connect
)

### Generating Services

### Generating Module File
_generate_module_lisp(connect
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/connect
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(connect_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(connect_generate_messages connect_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg" NAME_WE)
add_dependencies(connect_generate_messages_lisp _connect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(connect_genlisp)
add_dependencies(connect_genlisp connect_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS connect_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(connect
  "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/connect
)

### Generating Services

### Generating Module File
_generate_module_nodejs(connect
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/connect
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(connect_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(connect_generate_messages connect_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg" NAME_WE)
add_dependencies(connect_generate_messages_nodejs _connect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(connect_gennodejs)
add_dependencies(connect_gennodejs connect_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS connect_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(connect
  "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/connect
)

### Generating Services

### Generating Module File
_generate_module_py(connect
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/connect
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(connect_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(connect_generate_messages connect_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faamt/ros_ugv_ultron/src/connect/msg/Message.msg" NAME_WE)
add_dependencies(connect_generate_messages_py _connect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(connect_genpy)
add_dependencies(connect_genpy connect_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS connect_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/connect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/connect
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(connect_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/connect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/connect
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(connect_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/connect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/connect
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(connect_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/connect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/connect
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(connect_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/connect)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/connect\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/connect
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(connect_generate_messages_py std_msgs_generate_messages_py)
endif()
