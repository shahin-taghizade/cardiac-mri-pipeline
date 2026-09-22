data=load('isolated_cardiac_data.mat');
isolated_mask=double(data.isolated_mask);
measurements=data.measurements;

isoval=0.5;

[faces, vertices]=isosurface(isolated_mask,isoval);

vertices(:,1)=vertices(:,1)*measurements(2);
vertices(:,2)=vertices(:,2)*measurements(1);
vertices(:,3)=vertices(:,3)*measurements(3);

smooth_mask=isonormals(isolated_mask,vertices);

figure;
p=patch('Faces',faces,'Vertices',vertices,'VertexNormals',smooth_mask,'FaceColor',[0.8 0.1 0.1],'EdgeColor','none');
shading interp;
axis equal;
view(3);
camlight headlight;
lighting phong;
xlabel('X');ylabel('Y');zlabel('Z');
title('Heart');
grid on;