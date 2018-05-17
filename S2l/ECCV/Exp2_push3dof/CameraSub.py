#### Written by : @leopauly
#### Subscriber class for subscribing to camera images

import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np

class CameraSub:

    def __init__(self):
        rospy.init_node('camera_sub_node', anonymous=True)
        self.bridge = CvBridge()
        self.img_msg=Image()
        self.counter=1       
 
    def check(self,data):
        print('callback')



    def ros_to_cv2img(self,ros_img):
        print('iminside')
        try:
            cv2_img = self.bridge.imgmsg_to_cv2(ros_img, desired_encoding="passthrough") #'rgb8')#
        except CvBridgeError as e:
            print('error',e)


        print(self.counter)
        self.counter=self.counter+1
	    

        cv2.imshow('recieved_view',np.array(cv2_img[...,::-1]))
        cv2.waitKey(1)
        
        print(cv2_img)
        #return cv2_img


    def camera_subscribe(self):
        
        #frame_rgb= self.sub('/camera/images', Image)  
        #frame_rgb=rospy.Subscriber('/camera/images',Image,self.ros_to_cv2img,queue_size=1)
        
        self.img_msg = rospy.wait_for_message('/camera/images', Image)     
        #print(img_msg)
        frame_rgb=self.ros_to_cv2img(self.img_msg)
        
        return frame_rgb

camera_node_sub=CameraSub()
while True:
    camera_node_sub.camera_subscribe()
