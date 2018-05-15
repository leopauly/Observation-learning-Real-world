import cv2
import matplotlib.pyplot as plt


img=cv2.imread('test1.jpeg')
cv2.imshow("preview1", img)
cv2.waitKey(0)

plt.imshow(img)
plt.show
img_ = img[...,::-1]
plt.imshow(img_)
plt.show

cv2.imshow("preview", img_)
cv2.waitKey(0)
