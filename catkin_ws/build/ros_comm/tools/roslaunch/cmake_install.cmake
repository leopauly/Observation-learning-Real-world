# Install script for directory: /home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/tools/roslaunch

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/roskinetic/Observation-learning-Real-world/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/ros_comm/tools/roslaunch/catkin_generated/installspace/roslaunch.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roslaunch/cmake" TYPE FILE FILES "/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/ros_comm/tools/roslaunch/catkin_generated/installspace/roslaunch-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roslaunch/cmake" TYPE FILE FILES
    "/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/ros_comm/tools/roslaunch/catkin_generated/installspace/roslaunchConfig.cmake"
    "/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/ros_comm/tools/roslaunch/catkin_generated/installspace/roslaunchConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roslaunch" TYPE FILE FILES "/home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/tools/roslaunch/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/tools/roslaunch/env-hooks/10.roslaunch.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/ros_comm/tools/roslaunch/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/ros" TYPE FILE FILES "/home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/tools/roslaunch/resources/roscore.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roslaunch" TYPE DIRECTORY FILES "/home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/tools/roslaunch/resources")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roslaunch/scripts" TYPE PROGRAM FILES "/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/ros_comm/tools/roslaunch/catkin_generated/installspace/roslaunch-check")
endif()

