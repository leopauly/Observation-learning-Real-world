
## Imports for ROS
import rospy
from std_msgs.msg import String
rospy.init_node('joints_pub_&_camera_sub_test_node', anonymous=True)




class RoboControl:
    def __init__(self):
         # Initialise node
         #self.vel_msg= numpy_msg(Floats)   #Twist()
         #self.pub = rospy.Publisher('/robot_command',numpy_msg(Floats), queue_size=1)
         self.pub = rospy.Publisher('/robot_comm_test',String, queue_size=1)
         #rospy.init_node('cmd_vel_publisher', anonymous=True)
         #self.rate = rospy.Rate(10) # 10hz

    
    def check(self):
        checker='Hello'
        rospy.loginfo(checker)
        self.pub.publish(checker)


robot=RoboControl()
while True:
    robot.check()
