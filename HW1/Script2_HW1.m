%%
% *Quetion 2*
% 
% *Load the .MAT file created in Question 1*
close all; clear; clc;
load('imagesFileInfo.mat')
A = myImg(1).imagename;
B = myImg(2).imagename;
C = myImg(3).imagename;
D = myImg(4).imagename;
img1 = imread(A);
img2 = imread(B);
img3 = imread(C);
img4 = imread(D);

%%
% *Display the four images in a 2x2 arrangement*
subplot(2,2,1), subimage(img1)
subplot(2,2,2), subimage(img2)
subplot(2,2,3), subimage(img3)
subplot(2,2,4), subimage(img4)
