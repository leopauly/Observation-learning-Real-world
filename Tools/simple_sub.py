import rospy
from rospy.numpy_msg import numpy_msg
from rospy_tutorials.msg import Floats
from std_msgs.msg import Float32MultiArray
rospy.init_node('simple_sub_node', anonymous=True)


while True:
	print(rospy.wait_for_message('/robot_command',Float32MultiArray).data)

