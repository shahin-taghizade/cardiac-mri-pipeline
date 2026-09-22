import nibabel as nib 
import scipy 
import numpy as np

mri_img=nib.load('Task02_Heart/imagesTr/la_003.nii.gz')
mri_data=mri_img.get_fdata()

mri_min=np.min(mri_data)
mri_max=np.max(mri_data)

mri_normal=((mri_data-mri_min)/(mri_max-mri_min)*255).astype(np.uint8)