%%
% *Quetion 4*
% 
% *Implements the piecewiseFunction in Question 4, to perform a brightness and contrast on a monochrom image*
close all; clear; clc;
I = imread('us_27743.pgm');
c = 10;
b = 15;
%%
% *piecewiseFuction call*
J = piecewiseFunction(I, c, b);
subplot(1,2,1), imshow(I)
subplot(1,2,2), imshow(J)