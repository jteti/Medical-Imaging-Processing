%% MATLAB Assignment 1 
% *Quetion 1*
%
% The portable graymap format (PGM) grayscale images used in this assignment were retrieved from
% http://sun.aei.polsl.pl/~rstaros/mednat/index.html. This is a dataset of medical grayscale images for evaluating image compression algorithms. The set was prepared as a part of the research project Nr 4 T11C 032 24, which was fully supported by the Grant of the Polish National Research Committee (KBN).

%%
% *Read 4 Computed Tomography (CT) image file and store as array of structs*
close all; clear; clc;

% *Load 1st image filename, width, and height into struct myIMG*
img1 = imfinfo('ct_3030.pgm');      
f = img1.Filename;
w = img1.Width;
h = img1.Height;
myImg(1).imagename = f;
myImg(1).width = w;
myImg(1).height = h;

% *Load 2nd image filename, width, and height into struct myIMG*
img2 = imfinfo('ct_3071.pgm');      
f = img2.Filename;
w = img2.Width;
h = img2.Height;
myImg(2).imagename = f;
myImg(2).width = w;
myImg(2).height = h;

% *Load 3rd image filename, width, and height into struct myIMG*
img3 = imfinfo('ct_4006.pgm');      
f = img3.Filename;
w = img3.Width;
h = img3.Height;
myImg(3).imagename = f;
myImg(3).width = w;
myImg(3).height = h;

% *Load 4th image filename, width, and height into struct myIMG
img4 = imfinfo('ct_4087.pgm');      
f = img4.Filename;
w = img4.Width;
h = img4.Height;
myImg(4).imagename = f;
myImg(4).width = w;
myImg(4).height = h;

%%
% *Save array of structs as .mat file*
save imagesFileInfo.mat myImg;     % imagesFileInfo.mat


