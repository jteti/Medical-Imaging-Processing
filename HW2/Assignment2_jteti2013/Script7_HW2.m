%%
% *Quetion 7*
% 
% *A MATLAB script that implements the gaussianFunction to create a 128 X
% 128 random image with Gaussian distribution of pixel values, with mean
% value of 128 and standard deviation of 60. The image's histogram is also
% displayed to confirm its Gauss Curve.*
h = 128;
w = 128;
mean = 128;
std = 60;
J = gaussianFunction(h, w, mean, std);
J = uint8(J);
subplot(1,2,1), imshow(J)
subplot(1,2,2), imhist(J)