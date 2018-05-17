#### Written by : @leopauly 
#### Code for reading camera and publishing images 


import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np

class CameraNode:
    
    def __init__(self):
        ## Initialise camera setting
        cv2.namedWindow("preview")
        self.vc = cv2.VideoCapture(0)
        if self.vc.isOpened(): # try to get the first frame
            print('camera_opened....!!')
            rval, frame = self.vc.read()
            if rval:
                print('Frame grabbing successful')
            else: 
                print('Frame cant be grabbed')

        else:
            print('camera cant be opened :(')

        
        ## Initialising ROS node
        self.bridge = CvBridge()
        rospy.init_node('camera_pub_node', anonymous=True)
        self.camera_img=Image()
        self.pub = rospy.Publisher('/camera/images',Image, queue_size=1)
        self.rate = rospy.Rate(20) 
        self.rate.sleep()
        self.rate.sleep()


    def cv2_to_rosimg(self,cv2_img):
       ros_img = self.bridge.cv2_to_imgmsg(cv2_img, encoding="rgb8")
       return ros_img

    def camera_publisher(self):  

        ## Reading from camera
        _, frame_ = self.vc.read()
        print('frame taken')
        frame_bgr=cv2.resize(frame_,(112,112))
        cv2.imshow("preview", frame_bgr)
        frame_rgb = np.array(frame_bgr[...,::-1])
        self.key = cv2.waitKey(1)
        self.camera_img=self.cv2_to_rosimg(frame_rgb)
        

        ## ROS publishing
        #rospy.loginfo(camera_img)
        self.pub.publish(self.camera_img)
        self.rate.sleep()

#if __name__ == '__main__':
    
camera_node=CameraNode()
while True:
    camera_node.camera_publisher()
            
    
