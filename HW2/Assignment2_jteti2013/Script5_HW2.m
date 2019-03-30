%%
% *Quetion 5*
% 
% *A MATLAB script that implements region-based histogram equalization on a monochrome image.*
% *The script allows the users to specify an image, interactively select a
% region of interest to which the histogram equalization operation will be
% applied, and disppays the results of the operation.*
close all; clear; clc;
[file, canceled] = imgetfile();
if canceled
    return
end
info = imfinfo(file);
if not(strcmp(info.ColorType, 'grayscale' ))
    fprintf('input image must be grayscale!\n');
    return
end

img = imread(file);
mask = roipoly(img);

img2 = histeq(img, 256);
img2 = immultiply(not(mask), img) + immultiply(mask, img2);
imshow(img2);