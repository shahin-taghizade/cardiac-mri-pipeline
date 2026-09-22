pkg load image;

data=load('isolated_cardiac_data.mat');

isolated_mask=data.isolated_mask;
measurements=data.measurements;

active_voxels=sum(isolated_mask(:));
voxel_volume=measurements(1)*measurements(2)*measurements(3); %mm^3
total_volume=active_voxels*voxel_volume; %mm^3
total_volume_cm=total_volume/1000; %cm^3