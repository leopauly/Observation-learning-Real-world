#### Training agent in Pusher7Dof gym env using a single real-world env
## Wrtitten by : leopauly | cnlp@leeds.ac.uk
## Courtesy for DDPG implementation : Steven Spielberg Pon Kumar (github.com/stevenpjg)
## Exp for checking view point invaraince using 3dofpushreal Gym env
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


## Custom scripts
import lscript as lsp
import modelling as md

## Defining vars for reinfrocement learning algo
num_episodes=700
num_rollouts=20 # Each roll out represent a complete activity : activity could be pushing an object, reaching to a point or similar !
steps=16 # No of actions taken in a roll out
is_batch_norm = False #batch normalization switch
xrange=range # For python3
start_training=64 # Buffer size, before starting to train the RL algorithm

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
demo_folder='./Demos/_Demo_push_1/'

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

class RoboControl:
    def __init__(self):
         
        #self.vel_msg= numpy_msg(Floats)   #Twist()
        #self.pub = rospy.Publisher('/robot_command',String, queue_size=1)
        #rospy.init_node('cmd_vel_publisher', anonymous=True)

        ## Initialise node
        self.pub = rospy.Publisher('/robot_command',Float32MultiArray, queue_size=1)
        self.rate = rospy.Rate(3) # 10hz



    def publish_control(self,action):
        
        #self.vel_msg.linear.x=action[0]
        #self.vel_msg.linear.y=action[1]
        #self.vel_msg.angular.z=action[2]
        
        ## Publishing values
        vel_msg_c=Float32MultiArray(data=[action[0],0.0]) #np.array([action[0],0.00])
        rospy.loginfo(vel_msg_c.data)
        print('print_control',vel_msg_c.data)
        self.pub.publish(vel_msg_c)
        self.rate.sleep()
        print('before')
        robot_done=rospy.wait_for_message('/robot_done', numpy_msg(Floats)) 
        print('after')
        print('Robot done value after exicuting control:',robot_done)
        #self.rate.sleep()

    def reset(self):

        print('Robot reset')

        vel_msg_r=Float32MultiArray(data=[0.0,100]) #self.vel_msg=np.array([0.0,100.0])
        rospy.loginfo(vel_msg_r.data)
        print('print_control',vel_msg_r.data)
        self.pub.publish(vel_msg_r)
        print('before')
        robot_done=rospy.wait_for_message('/robot_done', numpy_msg(Floats)) 
        print('after')
        print('Robot done value after exicuting reset:',robot_done)
        #self.rate.sleep()
    '''
    def check(self):
        from std_msgs.msg import Int32MultiArray
        pub = rospy.Publisher('/robot_check',Int32MultiArray, queue_size=1)
        
        #a=IntList
        #a.data=[1,200]
        # vel_msg= numpy_msg(Floats) 
        #vel_msg=np.array([0.0,100.0])
        a=Int32MultiArray(data=[1,200])
        print('printed',a.data)
        rospy.loginfo(a)
        pub.publish(a)
        self.rate.sleep()
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
        
        #cv2.imshow('recieved_view',np.array(self.cv2_img[...,::-1]))
        #cv2.waitKey(1)

        return self.cv2_img

'''
### Extracting frames from camera
class Camera:
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
        

    def render(self):
        ## Capturing a single image from camera
        print('frame taken')
        rval, frame_ = self.vc.read()
        frame_bgr=cv2.resize(frame_,(112,112))
        cv2.imshow("preview", frame_bgr)
        frame_rgb = frame_bgr[...,::-1]
        self.key = cv2.waitKey(100)
        
        return np.array(frame_rgb)
'''
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



### VIDEO FEATURE EXTRACTION

class Vid_Feature:

    def __init__(self):
        self.saved_path='/home/roskinetic/S2l_Storage/trained_activity_nets/'
        self.network_name='activity_model.ckpt-104.meta'
        ### Activity_net
        self.g=tf.Graph()
        with self.g.as_default():

            self.sess = tf.InteractiveSession(config=tf.ConfigProto(allow_soft_placement=True, log_device_placement=False))
            ## Restore model weights from previously saved model
            self.saver = tf.train.import_meta_graph(os.path.join(self.saved_path,self.network_name))
            self.saver.restore(self.sess, os.path.join(self.saved_path,'activity_model.ckpt-104'))
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
    
    #Randomly initialize critic,actor,target critic, target actor network  and replay buffer
    num_states = feature_size   #num_states = env.observation_space.shape[0]
    num_actions = num_controls
    print ("Number of States:", num_states)
    print ("Number of Actions:", num_actions)
    action_space_high=[1.5] #[0.0,0.0,0.0]
    action_space_low=[0.03] #[0.5,0.5,0.5]
    print ("Action space highest values", action_space_high)
    print ("Action space lowest values:", action_space_low)
    robot=RoboControl()
    #while True:
    #    #robot.check()
    #    robot.publish_control([1])
    #    robot.reset() 

    agent = DDPG(is_batch_norm,num_states,num_actions,action_space_high,action_space_low)
    exploration_noise = OUNoise(num_actions)
    counter=0
    total_reward=0
    print ("Number of Rollouts per episode:", num_rollouts)
    print ("Number of Steps per roll out:", steps)
    reward_st = np.array([0])  #saving reward
    eval_metric_st= np.array([0])
    reward_st_all = np.array([0])  #saving reward after every step

    activity_obj=Vid_Feature()
    demo_vid_array=demo_array_extractor(demo_folder)
    demo_features=activity_obj.feature_extractor(demo_vid_array)

    frame_obj=Frame_Feature()
    #camera_obj= Camera()
    camera_obj= CameraSub()

    for episode in range(num_episodes):
        print ("==== Starting episode no:",episode,"====","\n")


        robot.reset()   # Reset env in the begining of each episode
        obs_img=camera_obj.camera_subscribe()   # Get the observation
        #obs_img=np.array(misc.imresize(obs_img,[112,112,3]))
        observation =np.array(frame_obj.frame_feature_extractor(obs_img))
        observation=observation.reshape(-1)
        reward_per_episode = 0

        for t in range(num_rollouts):

            reward_per_rollout=0
            vid_robo_=[]

            for i in range(steps):

                x = observation

                action = agent.evaluate_actor(np.reshape(x,[1,num_states]))
                noise = exploration_noise.noise()
                action = action[0] + noise #Select action according to current policy and exploration noise
                print ('Action at episode-',episode,'rollout-',t, 'step-', i ," :",action)


                robot.publish_control(action)
                
                obs_robo=camera_obj.camera_subscribe()   # Get the observation
            
                #obs_robo=misc.imresize(obs_robo,[112,112,3])
                vid_robo_.append(obs_robo)
                observation=np.array(frame_obj.frame_feature_extractor(np.array(obs_robo)))
                observation=observation.reshape(-1)
                #pasue()

                if(i==15):
                    vid_robo=np.array(vid_robo_)
                    robo_features=activity_obj.feature_extractor(vid_robo)
                    reward=-(distance(demo_features,robo_features))
                    reward=np.array(reward)
                    print('reward: ',reward)
                else:
                    reward=0
                    reward=np.array(reward)
                    print('reward: ',reward)

                # Storing reward after every rollout
                reward_st_all = np.append(reward_st_all,reward)
                np.savetxt('reward_all.txt',reward_st_all, newline="\n")

                #add s_t,s_t+1,action,reward to experience memory
                agent.add_experience(x,observation,action,reward,False)
                reward_per_rollout+=reward
                counter+=1

            #train critic and actor network
            if counter > start_training:
                    agent.train()
            print ('\n\n')

            #Saving policy
            if ((episode%100)==0 and t==num_rollouts-1):
                print('saving policy...........................!')
                agent.save_actor(episode)


            reward_per_episode+=reward_per_rollout

        #check if episode ends:

        print ('EPISODE: ',episode,' Total Reward: ',reward_per_episode)
        print ("Printing reward to file")
        exploration_noise.reset() #reinitializing random noise for action exploration
        reward_st = np.append(reward_st,reward_per_episode)
        np.savetxt('episode_reward.txt',reward_st, fmt='%f', newline="\n")
        print ('\n\n')

        total_reward+=reward_per_episode

    print ("Average reward per episode {}".format(total_reward / num_episodes))



s2l()
