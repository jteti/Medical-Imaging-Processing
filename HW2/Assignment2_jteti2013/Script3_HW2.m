%%
% *Quetion 3*
% 
% *Uses imrotate to write a MATLAB script that reads an image, rotates it
% by an arbitrary angle using bilinear interpolation. The script di8splays
% the amount of rotation in degrees, the name of the interpolation method,
% and associated processing time using the tic and toc functions.
close all; clear; clc;
tic
fName = 'us_19773.pgm';
I = imread(fName);
deg = 47;
method = 'bilinear';
I_rot = imrotate(I,deg, method);
imshow(I_rot);
disp(['Output: ', fName, ', ', int2str(deg),', ', method])
t = toc;
elapsed = sprintf(['The elapsed time for rotation of the image ' fName ', at ' int2str(deg) ' degrees, using ' method, ' interpolation is ', num2str(t), ' seconds']);
disp(elapsed)




