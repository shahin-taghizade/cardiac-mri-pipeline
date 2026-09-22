pkg load image;

data=load('cardiac_data.mat');

volume=data.mri_volume;
img=data.img;
measurements=data.measurements;

kernel_cube=ones(3,3,3);
img_no_noise=imopen(img, kernel_cube);
img_no_noise=imclose(img_no_noise, kernel_cube);

save('-mat-binary','cleaned_cardiac_data.mat', 'img_no_noise', 'volume', 'measurements');