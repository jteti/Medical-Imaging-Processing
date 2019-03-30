%%
% *Quetion 8*
% 
% *A MATLAB script that reads a monochrome image, dispalys its histogram, and generates another gray-level image, different from the original, but hwise histogram is identical to the original's histogram*
close all; clear; clc;
I = imread('cr_pacem_2.pgm');
I2 = circshift(I,650); 
I3 = flip(I2); 

subplot(2,2,1), imshow(I);
subplot(2,2,2), imhist(I); 
subplot(2,2,3), imshow(I3);
subplot(2,2,4), imhist(I3); 