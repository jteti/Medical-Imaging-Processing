%%
% *Quetion 9*
% 
% *A MATLAB script that extracts the connected components of a binary image, diplays the results using different colors for each component and overlays a cros-shaped symbol on top of each component's center of gravity, whose coordinates can be obtained by the Centroid property*
close all; clear; clc;
I = imread('circles.png'); 
Ign = im2double(I);
Ibw = im2bw(Ign,.5);
L = bwlabel(Ibw);
stat = regionprops(L,'centroid');
figure; imshow(label2rgb(L)); hold on;
for x =1: numel(stat)
    plot(stat(x).Centroid(1),stat(x).Centroid(2),'k+');
end

clear;
I2 = imread('Test3.png'); 
Ig2 = rgb2gray(I2);
Ign2 = im2double(Ig2);
Ibw = im2bw(Ign2,.5);
L2 = bwlabel(Ibw);
stat = regionprops(L2,'centroid'); %#ok<MRPBW>
figure; imshow(label2rgb(L2)); hold on;
for x =1: numel(stat)
    plot(stat(x).Centroid(1),stat(x).Centroid(2),'k+');
end

clear;
I3 = imread('TPTest1.png'); 
Ign3 = im2double(I3);
Ibw3 = im2bw(Ign3,.5);
L3 = bwlabel(Ibw3);
stat = regionprops(L3,'centroid');
figure; imshow(label2rgb(L3)); hold on;
for x =1: numel(stat)
    plot(stat(x).Centroid(1),stat(x).Centroid(2),'k+');
end
