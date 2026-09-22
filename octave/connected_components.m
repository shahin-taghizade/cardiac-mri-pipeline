pkg load image;

data=load('cleaned_cardiac_data.mat');

connected=bwconncomp(data.img_no_noise);

stats=regionprops(connected, 'Area');

measurements=data.measurements; %mm
volume=data.volume;

phy_volume=[stats.Area]*(measurements(1)*measurements(2)*measurements(3));

[muscle_volume, max_idx]=max(phy_volume);

isolated_mask=false(size(data.img_no_noise));
isolated_mask(connected.PixelIdxList{max_idx})=true;

save('-mat-binary','isolated_cardiac_data.mat', 'isolated_mask','volume', 'measurements');
