import os
import cv2
import numpy as np
from matplotlib import pyplot as plt

path = "/home/olav/gitRepos/personalsite/static/img_first_post"
os.chdir(path)
img  = cv2.imread('hytta.jpg')
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
# blur = cv2.blur(gray,(30,30))
blur = cv2.blur(img,(90,90))

cv2.imwrite('hytta_gray.png',gray)
cv2.imwrite('hytta_blur.png',blur)
