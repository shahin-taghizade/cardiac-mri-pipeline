import scipy
from load_mri import mri_normal, mri_img
from preprocess import img_for_mat
import numpy as np

scipy.io.savemat('octave/cardiac_data.mat', {
    'mri_volume':mri_normal,
    'img':img_for_mat,
    'measurements':mri_img.header.get_zooms()[:3]
}, do_compression=True)