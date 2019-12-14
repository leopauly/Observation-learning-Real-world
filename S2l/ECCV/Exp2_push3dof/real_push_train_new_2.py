#### Training a UR5
## Wrtitten by : leopauly | cnlp@leeds.ac.uk
## Courtesy for DDPG implementation : Steven Spielberg Pon Kumar (github.com/stevenpjg)
####

##Imports
import numpy as np
np.set_printoptions(suppress=True)
import cv2
from ddpg import DDPG
from ou_noise import OUNoise
import matplotlib.pyplot as plt
import scipy.misc as misc

## Imports for ROS
import rospy
from geometry_msgs.msg import Twist
from rospy.numpy_msg import numpy_msg
from rospy_tutorials.msg import Floats
from std_msgs.msg import Float32MultiArray
from std_msgs.msg import Int8
from std_msgs.msg import Float32
from std_msgs.msg import String
rospy.init_node('joints_pub_&_camera_sub_node', anonymous=True)
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image

## Imports for DNN
import os
import sys
from six.moves import xrange  # pylint: disable=redefined-builtin
import PIL.Image as Imaging
import random
import time
import math
import matplotlib.pyplot as plt
import tensorflow as tf
import keras
from keras import backend as K
import time
import timeit


## Custom scripts
import lscript as lsp
import modelling as md


xrange=range # For python3
## vars for feature extraction
height=112
width=112
channel=3
crop_size=112
cluster_length=16 # Length of one activity
nb_classes=2
feature_size=4608 #8192   #16384  #487
num_controls=1 # linear x,y; angular z;
#frame_feature_size=
demo_folder='./Demos/Demo_real_push_v1/'


#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

class RoboControl:
    def __init__(self):
         
        ## Initialise node
        self.pub_reward = rospy.Publisher('/robot_reward',numpy_msg(Floats), queue_size=1)
        rospy.Subscriber('/sequence_done', numpy_msg(Floats),self.callback_seq)
        rospy.Subscriber('/robot_record', numpy_msg(Floats),self.callback_record)
        self.rate = rospy.Rate(3) # 10hz
        self.sequence_done=-100

    def callback_seq(self,data):
        print('sequence_done inside callback................!',data.data)
        if(data.data[0]==0):
            print('sequence_done inside callback',data.data)
            
            self.sequence_done=0
            print('value of sequence done changed')
        print(data.data)

    def callback_record(self,data):
        print(data.data)

    def publish_reward(self,reward):
        

        
        ## Publishing values
        reward_msg= [reward] #Float32(data=reward) #np.array([action[0],0.00])
        reward_msg=np.array(reward_msg)
        rospy.loginfo(reward_msg)
        print('print_reward',reward_msg)
        self.pub_reward.publish(reward_msg)
        
        '''
        print('before pub reward')
        sequence_done=rospy.wait_for_message('/robot_reward_done', numpy_msg(Floats))#,timeout=timeout_period) 
        print('after_pub_result')
        
        print('Robot reward_done value after recieving reward:',sequence_done)
        '''

    
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#


class CameraSub:

    def __init__(self):
        #rospy.init_node('camera_sub_node', anonymous=True)
        self.bridge = CvBridge()
        self.img_msg=Image()
    
    def check(self,data):
        print('callback')



    def ros_to_cv2img(self,ros_img):
       
        try:
            self.cv2_img = self.bridge.imgmsg_to_cv2(ros_img, desired_encoding="passthrough") #'rgb8')#
        except CvBridgeError as e:
            print('error',e)


        print('camera observation recieved')
        #cv2.imshow('recieved_view',np.array(self.cv2_img[...,::-1]))
        #cv2.waitKey(1)
        
        #print(self.cv2_img)
        #return self.cv2_img


    def camera_subscribe(self):
        
        #frame_rgb= self.sub('/camera/images', Image)  
        #frame_rgb=rospy.Subscriber('/camera/images',Image,self.ros_to_cv2img,queue_size=1)
        
        print('Observation ready to be taken')
        self.img_msg = rospy.wait_for_message('/camera/images', Image)     
        #print(img_msg)
        print('Observation taken')
        frame_rgb=self.ros_to_cv2img(self.img_msg)
        
        #self.cv2_img=self.cv2_img[...,::-1]
        cv2.imshow('recieved_view',np.array(self.cv2_img[...,::-1]))
        cv2.waitKey(1)

        return self.cv2_img



#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

### Extracting features fromg each from using imagenet-vggnet 
class Frame_Feature:
    def __init__(self):
         self.g=tf.Graph()
         with self.g.as_default():
              self.sess=tf.InteractiveSession(config=tf.ConfigProto(allow_soft_placement=True,log_device_placement=False))
              self.base_model=tf.keras.applications.vgg16.VGG16(include_top=False, weights='imagenet', input_tensor=None, input_shape=(height,width,channel), pooling=None, classes=1000)
              #print(tf.contrib.graph_editor.get_tensors(self.g))   #(tf.get_default_graph()))
              self.base_model._make_predict_function()
              print('VggNet loaded with Imagenet values')

    def frame_feature_extractor(self,frame_):
        frame= self.im_preprocess(frame_)
        frame=frame.reshape(-1,height,width,channel)
        frame_features=self.base_model.predict(frame)
        return frame_features

    def im_preprocess(self,im):
        im = np.float32(im)
        im[:,:,2] -= 103.939
        im[:,:,1] -= 116.779
        im[:,:,0] -= 123.68
        im = im[:, :, ::-1]  # change to BGR
        return im
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#


### DEMO FEATURE EXTRACTION
def get_compress_frames_data(filename, num_frames_per_clip=cluster_length):
  ret_arr = []
  for parent, dirnames, filenames in os.walk(filename):

    filenames = sorted(filenames)
    jump=math.floor((len(filenames)/num_frames_per_clip))
    loop=0

    for i in range(0,len(filenames),jump):
      if (loop>15):  
        break
      if (filenames[i].endswith('.png')):
        image_name = str(filename) + '/' + str(filenames[i])
        img = Imaging.open(image_name)
        img_data = np.array(img)
        ret_arr.append(img_data)
        loop=loop+1
  ret_arr=np.array(ret_arr)
  #ret_arr=ret_arr/255

  return ret_arr

def demo_array_extractor(demo_vid_path):
    demo_vid_array=get_compress_frames_data(demo_vid_path)
    return demo_vid_array
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

### Sampling Obsrvations

def sampling_obs(vid_robo_all,num_frames_per_clip=cluster_length):
    total_obs=len(vid_robo_all)
    jump=math.floor(total_obs/num_frames_per_clip)
    print('jump',jump,'totol ob',total_obs,'vid_robo_all',vid_robo_all.shape)
    loop=0
    ret_arr=[]
    for i in range(0,total_obs,jump):
        if (loop>15):
            break
        img_data = vid_robo_all[i]
        ret_arr.append(img_data)
        loop=loop+1
        
    ret_arr=np.array(ret_arr)
    print('demo array size:::::::',ret_arr.shape)
    #ret_arr=ret_arr/255
    return ret_arr




#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#


### VIDEO FEATURE EXTRACTION

class Vid_Feature:

    def __init__(self):
        self.saved_path='/home/roskinetic/S2l_Storage/trained_activity_nets/entire_video'
        self.network_name='activity_model.ckpt-67.meta'
        ### Activity_net
        self.g=tf.Graph()
        with self.g.as_default():

            self.sess = tf.InteractiveSession(config=tf.ConfigProto(allow_soft_placement=True, log_device_placement=False))
            ## Restore model weights from previously saved model
            self.saver = tf.train.import_meta_graph(os.path.join(self.saved_path,self.network_name))
            self.saver.restore(self.sess, os.path.join(self.saved_path,'activity_model.ckpt-67'))
            print ("Model restored from file: %s" % self.saved_path)

    ## For extracting activity features
    def feature_extractor(self,vid_np):
        #print('shape of video for feature extraction:',vid_np.shape)
        self.vid_=vid_np.reshape(-1,cluster_length,height,width,channel)

        #print(tf.contrib.graph_editor.get_tensors(self.g))   #(tf.get_default_graph()))
        #print(tf.get_default_graph().as_graph_def())
        f_v = self.sess.graph.get_tensor_by_name('flatten_1/Reshape:0')
        self.f_v_val=np.array(self.sess.run([f_v], feed_dict={'conv1_input:0':self.vid_,'Placeholder:0':self.vid_ }))#,K.learning_phase(): 0 }))

        #print('extracted video features shape:',f_v_val.shape)
        self.features=np.reshape(self.f_v_val,(-1))
        #print('features_shape',features.shape)
        return self.features

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#


def distance(f_demo,f_robo):
    #print('shape f_demo',f_demo.shape,'shape f_demo',f_robo.shape)
    return np.linalg.norm(f_demo-f_robo)
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#


def s2l():
    robot=RoboControl()
    episode=0
    activity_obj=Vid_Feature()
    reward_st = np.array([0])  #saving reward

    while(True):
        frame_index=0  
        reward= 0
        
        

        
        demo_vid_array=demo_array_extractor(demo_folder)
        demo_features=activity_obj.feature_extractor(demo_vid_array)

        camera_obj= CameraSub()

    
        print ("==== Starting episode no:",episode,"====","\n")
        vid_robo_=[]
        robot.sequence_done=-100

        print('waiting to record')
        start_time=timeit.default_timer()
        robot_record=rospy.wait_for_message('/robot_record', numpy_msg(Floats))#,timeout=timeout_period)
        print('time waited to start recording',timeit.default_timer()-start_time)
        print('Starting to record') 
        
        while(True):
            print('Starting to record_inside')
            obs_robo=camera_obj.camera_subscribe()   # Get the observation        
            obs_robo=misc.imresize(obs_robo,[112,112,3])
            vid_robo_.append(obs_robo)
            print('value sequence done',robot.sequence_done)

            print('frame number :',frame_index)
            frame_index=frame_index+1
            if (robot.sequence_done==0):
                print('Stoping to record................................!') 
                break

            
        vid_robo=np.array(vid_robo_)
        vid_robo_sampled=sampling_obs(vid_robo,num_frames_per_clip=cluster_length)

        for i_temp in range(len(vid_robo)):
            temp_img=vid_robo[i_temp]
            temp_img=temp_img[...,::-1]
            cv2.imwrite('./recordings/%03d.png'%i_temp,np.array(temp_img))
            

        for i_temp in range(len(vid_robo_sampled)):
            temp_img=vid_robo_sampled[i_temp]
            temp_img=temp_img[...,::-1]
            cv2.imwrite('sample_video'+str(i_temp)+'.png',np.array(temp_img))
            

       
        robo_features=activity_obj.feature_extractor(vid_robo_sampled)
        reward=-((distance(demo_features,robo_features))*(distance(demo_features,robo_features)))
        reward=np.array(reward)
        print('reward: ',reward)
            
            
        # Publising reward
        robot.publish_reward(reward)


        print ('EPISODE: ',episode,'Reward: ',reward)
        print ("Printing reward to file")
        reward_st = np.append(reward_st,reward)
        np.savetxt('episode_reward.txt',reward_st, fmt='%f', newline="\n")
        print ('\n\n')

        episode=episode+1
    



s2l()
