## Cardiac MRI Pipeline

This project is a pipeline for 3D Cardiac MRI processing and analysis using Python and GNU Octave.

I used techniques like matrix manipulation, 3D image processing, scientific computing.

### Pipeline steps:
1. NIfTI loading using Python (I used Medical Segmentation Decathlon Task02_Heart which MRI scan of left atrium)
2. Manipulating the image using Python for clearing the noise and preparing for Octave processing
3. Exporting to Octave
4. Preparing 3D kernel for the image
5. Isolating the left atrium
6. Rendering the image
7. Calculating essential components

### Results

Dataset **`la_003.nii.gz`** was used at this project.

**Voxel Spatial Resolution**
**Unit Voxel Volume**
**Connected Voxels**

