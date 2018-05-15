import cv2

cv2.namedWindow("preview")
vc = cv2.VideoCapture(0)

if vc.isOpened(): # try to get the first frame
    rval, frame = vc.read()
else:
    rval = False

while rval:
    frame_=cv2.resize(frame,(112,112))
    cv2.imshow("preview", frame_)
    rval, frame = vc.read()
    key = cv2.waitKey(20000)
    if key == 27: # exit on ESC
        break
cv2.destroyWindow("preview")
