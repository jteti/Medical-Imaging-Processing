
%% MATLAB ASSIGNMENT 3
% Use a combination of image processing techniques learned so far to write a
% MATLAB script whose goal is to produce a quantitative estimate of the amount
% (in %) of soft metastasis that might be present in the image of a tissue1
% Your script should take as input a color image such as the three sample images
% below (available on Blackboard) and produce a single line of text as follows:
% 
%%
% Batch process utilized to obtain 
% all the *tif files within the driectory 
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
    % Utilize function to estimate the amount of soft meastasis in th eimage 
     imgMatrix(x) = MetsFunction_HW3(images(x).name);
end