execute_process(COMMAND "/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/ros_comm/tools/roslaunch/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/ros_comm/tools/roslaunch/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
