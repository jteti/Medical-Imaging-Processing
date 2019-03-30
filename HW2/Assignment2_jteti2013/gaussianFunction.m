%%
% *Quetion 6 Function*
% 
% *A MATLAB function that creates an 8-bit random image with a Gaussian distribution of pixel values. The function takes 4 parameters; height width, mean value,and standard deviation*
function [y] = gaussianFunction(h, w, mean, std)
y = mean + std * randn(h, w);
