## Cardiac MRI Pipeline

This project is a pipeline for 3D Cardiac MRI processing and analysis using Python and GNU Octave.

I used techniques like matrix manipulation, 3D image processing, scientific computing.

### Pipeline steps:
1. NIfTI loading using Python (I used Medical Segmentation Decathlon Task02_Heart)
2. Manipulating the data using Python to prepare it for Octave processing
3. Exporting to Octave
4. Preparing 3D kernel for the image
5. Isolating the largest connected component
6. Rendering the image
7. Calculating components like volume, active voxels, voxel volume

Dataset **`la_003.nii.gz`** was used at this project.

### Requirements

    - Python 3.10+
    - GNU Octave (with image package)
    - Dependencies listed in 'requirements.txt'

### How to run the project

    1. Install dependencies:

    ```bash
    python -m venv venv
    source venv/bin/activate #For Windows: venv/Scripts/activate
    pip install -r requirements.txt
    ```
    
    2. Preprocess the data with Python:

    ```bash
    python python/export_mat.py
    ```

    3.  Launch Octave and run these commands:

    ```bash
    cd octave
    morphology
    connected_components
    render_mesh #If you want to see the image
    calculate_volume #If you want to see other data like volume and voxels
    ```


Note 1: I chose "The Unlicense" for this project. This means you can use my code at your projects.
Note 2: The given data includes high-intensity region that can include cardiac structures, blood-filled chambers, veins. Because of that the system returns connected components. This is not a validated anatomical heart volume. The methods in this project are not clinically validated.

Fun note: I built first version of this project in 5 days. Because of that please do not expect something very big :D



### Data Source

This project uses the Task02_Heart dataset provided by the Medical Segmentation Decathlon:

    Dataset Source: Medical Segmentation Decathlon (AWS)

    Reference Paper: Antonelli, M. et al. "The Medical Segmentation Decathlon." Nature Communications 13, 4128 (2022). https://doi.org/10.1038/s41467-022-30695-9

    Dataset License: Distributed under Creative Commons Attribution-ShareAlike 4.0 (CC-BY-SA 4.0).
