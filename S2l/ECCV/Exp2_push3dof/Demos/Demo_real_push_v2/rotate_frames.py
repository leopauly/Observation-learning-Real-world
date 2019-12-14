#### Code for converting videos to frames


import pylab
import cv2
#import imageio
import scipy 
import os
from scipy import ndimage
#from skimage.transform import rotate

filename = './0deg'
    
for parent, dirnames, filenames in os.walk(filename):

    filenames = sorted(filenames)
    num=0
    for i in range(0,len(filenames)):
      if (filenames[i].endswith('.png')):
        image_name = str(filename) + '/' + str(filenames[i])
        img = cv2.imread(image_name)
        #image_resize=cv2.resize(img, (112,112))
        image_rot=ndimage.rotate(image_resize,90)
        cv2.imwrite("./%03d.png" % num,image_rot)
        num=num+1

