#!/home/ros/anaconda2/bin/python


#### Author : @leopauly
##   Program : Simple publisher node for controlling mobile base 
##
####



import rospy
from geometry_msgs.msg import Twist
#import tensorflow as tf
#import keras

def talker():
    vel_msg=Twist()
    pub = rospy.Publisher('/cmd_vel_mux/input/teleop',Twist, queue_size=10)
    rospy.init_node('cmd_vel_publisher', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    
    while not rospy.is_shutdown():
        vel_msg.angular.z=10
        rospy.loginfo(vel_msg)
        pub.publish(vel_msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
