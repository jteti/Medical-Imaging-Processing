%% 
% *Question 4*
% 
% *Open an image file*
%
close all; clear; clc;
filename = uigetfile({'*.jpg;*.tif;*.png;*.gif;*.pgm','All Image Files';...
          '*.*','All Files' },'Pick an Image File');
%%
% *Flip the original image upside-down, left side-right, and compute the
% negative*
%
I = imread(filename);
I2 = imcomplement(I);        % negative transform  
I3 = fliplr(I);           % horizontal flip
I4 = flip(I);           % vertical flip
%%
% *Display the four images in a 2x2 arrangement*
%
subplot(2,2,1), imshow(I); title('Original Image');
subplot(2,2,2), imshow(I2); title('Negative Transform');
subplot(2,2,3), imshow(I3); title('Horizontal Flip');
subplot(2,2,4), imshow(I4); title('Vertical Flip');