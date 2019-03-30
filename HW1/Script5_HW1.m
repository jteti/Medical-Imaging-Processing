%% 
% *Question 5*
%
% *A beginner MATLAB programmer wrote the code below to darken a
% grayscale image by reducing the intensity of each pixel by half. Please retype
% and run their code and answer the following questions:*
close all; clear; clc;
I = imread('coins.png');
[height, width]= size(I);
J = uint8(zeros(size(I)));
for i =1:height
    for j =1:width
        J(i,j) = 0.5 * I(i,j);
    end
end
imshow(I); title('Original Image');
figure, imshow(J); title('Darkened Image (Original)');
%%
% a. Does the script work as expected?
%
% *Yes, the intesity of each pixel is reduced by half, making the image
% darker.*
%
% b. Will it still work if you remove the uint8 typecasting in line 3? Why (not)?
%
% *No, the zeros function creates a matrix of zeros, making the
% whole image black*
% 
% c. What is the main problem with this code? Be specific!
% 
% *The code is inefficient because it attempts  to convert each pixels, one at a time, rather than use a function to
% darken the whole image at once.* 
%%
%
% d. Rewrite the code to improve its efficiency while keeping it readable.
clear; clc;
I = imread('coins.png');
J = imadjust(I,stretchlim(I),[0 .5]);
figure, imshow(J); title('Darkened Image (New)');

%%
% e. Compare the performance of the original code against the modified version you wrote, using tic and toc.
%
clear;
tic
I = imread('coins.png');
[height, width]= size(I);
J = uint8(zeros(size(I)));
for i =1:height
    for j =1:width
        J(i,j) = 0.5 * I(i,j);
    end
end
imshow(I); title('Original Image');
figure, imshow(J); title('Darkened Image (Original)');
t = toc;
elapsed = sprintf('The elapsed time of the original code is');
disp(elapsed)
disp(t)

%
clear;
tic
I = imread('coins.png');
J = imadjust(I,stretchlim(I),[0 .5]);
figure, imshow(J); title('Darkened Image (New)');
t = toc;
elapsed = sprintf('The elapsed time of the new code is');
disp(elapsed)
disp(t)


