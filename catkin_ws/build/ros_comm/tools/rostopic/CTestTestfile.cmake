# CMake generated Testfile for 
# Source directory: /home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/tools/rostopic
# Build directory: /home/roskinetic/Observation-learning-Real-world/catkin_ws/build/ros_comm/tools/rostopic
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rostopic_rostest_test_rostopic.test "/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/test_results/rostopic/rostest-test_rostopic.xml" "--return-code" "/home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/tools/rostest/scripts/rostest --pkgdir=/home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/tools/rostopic --package=rostopic --results-filename test_rostopic.xml --results-base-dir \"/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/test_results\" /home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/tools/rostopic/test/rostopic.test ")
add_test(_ctest_rostopic_nosetests_test.test_rostopic_command_line_offline.py "/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/test_results/rostopic/nosetests-test.test_rostopic_command_line_offline.py.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/roskinetic/Observation-learning-Real-world/catkin_ws/build/test_results/rostopic" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/tools/rostopic/test/test_rostopic_command_line_offline.py --with-xunit --xunit-file=/home/roskinetic/Observation-learning-Real-world/catkin_ws/build/test_results/rostopic/nosetests-test.test_rostopic_command_line_offline.py.xml")
