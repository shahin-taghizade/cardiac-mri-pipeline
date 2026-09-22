from load_mri import mri_normal
import cv2 
import numpy as np

slice_normal_img=mri_normal[:,:,mri_normal.shape[2]//2]
image=cv2.inRange(slice_normal_img, 100, 255)
cv2.imwrite('results/figures/heart_img.jpg', image)

img_for_mat=cv2.inRange(mri_normal, 100, 255)