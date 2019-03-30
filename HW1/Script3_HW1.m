
%%
% *Question 3*
% 
% *Read, open, and display an image file*

[baseName, folder] = uigetfile({'*.jpg;*.tif;*.png;*.gif;*.pgm','All Image Files';...
          '*.*','All Files' },'Pick an Image File');
filename = fullfile(folder, baseName);
imshow(filename)
%%
% 
% *Report ColorType of image file*
info = imfinfo(filename); 
type = info.ColorType;
stringType = sprintf('The type is %s. \n', type);
disp(stringType)
%%
% *Convert image to grayscale if needed.*
grayImage = imread(filename);
%% 
% *Get the dimensions of the image.*  
% *numberOfColorBands should be = 1.*
[rows, columns, numberOfColorChannels] = size(grayImage);
if numberOfColorChannels > 1
%%
% *Image is not grayscale*
% *Convert it to grayscale by taking only the green channel.*
	filename = grayImage(:, :, 2); % Take green channel.
    disp('Converting to Grayscale')
end
figure, imshow(filename)
%%
% *Display maximum gray level values*
maxGrayLevel = max(filename(:));
intMax = sprintf('The maximum gray level is %d. \n', maxGrayLevel);
disp(intMax)
%% 
% *Display minimum gray level values*
minGrayLevel = min(filename(:));
intMin = sprintf('The minimum gray level is %d. \n', minGrayLevel);
disp(intMin)
%% 
% *Display average gray level values*
avgGrayLevel = mean(filename(:));
floatAvg = sprintf('The average gray level is %f. \n', avgGrayLevel);
disp(floatAvg)
%%