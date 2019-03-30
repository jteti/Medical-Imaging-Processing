
%% MATLAB ASSIGNMENT 3
% Use a combination of image processing techniques learned so far to write a
% MATLAB script whose goal is to produce a quantitative estimate of the amount
% (in %) of soft metastasis that might be present in the image of a tissue1
% Your script should take as input a color image and produce a single line of text.
% 
%%
% Batch process utilized to obtain 
% all the *tif files within the directory 
% 
clear;close all;clc;
images = dir('*.tif');
images(1).name;
%%
% Process all the files found in the directory
numImg = length(images);
imgMatrix = zeros(numImg,1);
for x=1:numImg;
    %%
    % Utilize function to estimate the amount of soft meastasis in the image 
     imgMatrix(x) = MetsFunction_HW3(images(x).name);
end