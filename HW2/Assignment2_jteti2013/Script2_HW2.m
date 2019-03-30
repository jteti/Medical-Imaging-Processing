%%
% *Quetion 2*
% 
% *MATLAB script that reads an image, performs brightness correction using the brightnessFunction, and displays a windows with theimage and its histogram, before and after the brightness*
close all; clear; clc;
I = imread('us_3403.pgm');

brightInput = input('Enter the letter b to brighten or d to darken): ', 's');
if (brightInput == 'b')
    brt = 1;
elseif (brightInput == 'd');
    brt = -1;
end;

amount = input('Enter a number from 0 to 100 for the amount of brightness correction: ');
J = brightnessFunction(I, amount, brt);

subplot(2,2,1), imshow(I)
subplot(2,2,2), imhist(I)
subplot(2,2,3), imshow(J)
subplot(2,2,4), imhist(J)
