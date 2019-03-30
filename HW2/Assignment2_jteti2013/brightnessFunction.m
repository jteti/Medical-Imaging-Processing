%% MATLAB Assignment 2 
% *Quetion 1*
%
% The portable graymap format (PGM) grayscale images used in this assignment were retrieved from
% http://sun.aei.polsl.pl/~rstaros/mednat/index.html. This is a dataset of medical grayscale images for evaluating image compression algorithms. The set was prepared as a part of the research project Nr 4 T11C 032 24, which was fully supported by the Grant of the Polish National Research Committee (KBN).

%%
% This function performs multiplicative brightness corretion on a
% monochrome image. It takes as arguments: a monochrome image, a number
% between 0 and 100 and a parameter indicating whether the correction is
% intended to brighten or darken the image 
function [y] = brightnessFunction(I, amount, b)
y = (1 + b * (amount/100)) * I;



