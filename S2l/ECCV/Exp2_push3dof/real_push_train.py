#### Training agent in Pusher7Dof gym env using a single real-world env
## Wrtitten by : leopauly | cnlp@leeds.ac.uk
## Courtesy for DDPG implementation : Steven Spielberg Pon Kumar (github.com/stevenpjg)
## Exp for checking view point invaraince using 3dofpushreal Gym env
####

##Imports
import gym
from gym.spaces import Box, Discrete
import numpy as np
np.set_printoptions(suppress=True)
import cv2
from ddpg import DDPG
from ou_noise import OUNoise
import matplotlib.pyplot as plt
import scipy.misc as misc

## Imports for DNN
import os
from threading import Thread, Lock
import sys
from six.moves import xrange  # pylint: disable=redefined-builtin
import PIL.Image as Image
import random
import numpy as np
import cv2
import time
import math
import matplotlib.pyplot as plt
import tensorflow as tf
import keras
from keras import backend as K

## Custom scripts
import lscript as lsp
import modelling as md

## Defining env
env = gym.make('Pusher3DOFReal-v1')
assert isinstance(env.observation_space, Box), "observation space must be continuous"
assert isinstance(env.action_space, Box), "action space must be continuous"

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
#frame_feature_size=
saved_path='/home/ironman/trained_activity_nets/' 
demo_folder='./Demos/_Demo_push_1/'

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#


class Camera:
    def __init__(self):
         # Initialise camera setting

    def capture_camera(self):
        # Capturing a single image from camera


#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#


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
        img = Image.open(image_name)
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
        self.saved_path='/home/ironman/trained_activity_nets/' 
        self.network_name='activity_model.ckpt-104.meta'
        ### Activity_net
        self.g=tf.Graph()
        with self.g.as_default():

            self.sess = tf.InteractiveSession(config=tf.ConfigProto(allow_soft_placement=True, log_device_placement=False))
            ## Restore model weights from previously saved model
            self.saver = tf.train.import_meta_graph(os.path.join(self.saved_path,self.network_name))
            self.saver.restore(self.sess, os.path.join(saved_path,'activity_model.ckpt-104'))
            print("Model restored from file: %s" % saved_path,flush=True)    

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
    num_actions = env.action_space.shape[0]   
    print ("Number of States:", num_states)
    print ("Number of Actions:", num_actions)

    agent = DDPG(env, is_batch_norm,num_states,num_actions)
    exploration_noise = OUNoise(env.action_space.shape[0])
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

    for episode in range(num_episodes):
        print ("==== Starting episode no:",episode,"====","\n")
        env.reset()   # Reset env in the begining of each episode
        env.render()
        obs_img=env.render(mode='rgb_array')   # Get the observation
        obs_img=np.array(misc.imresize(obs_img,[112,112,3]))
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

               
                _,_,done,info=env.step(action)
                env.render()
                obs_robo_=env.render(mode='rgb_array')   # Get the observation
                obs_robo=misc.imresize(obs_robo_,[112,112,3])
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

                # Printing eval_metric after every rollout
                eval_metric=np.array(env.get_eval())
                eval_metric=eval_metric.reshape(-1)
                print('Distance to goal:',eval_metric)    
                eval_metric_st = np.append(eval_metric_st,eval_metric)           
                np.savetxt('eval_metric_per_step.txt',eval_metric_st, newline="\n")

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
