%% MetsFunction_HW3
%
function metsFraction = MetsFunction_HW3(imgName)
%% 
% Read the image file
%
rgbImg = imread(imgName);

%% 
% Set a layer using the green plane set at the index of 2
%
gLayer = rgbImg(:,:,2);

%%
% Computes a global threshold using the new green layer created, 
% then converts it to a binary image 
%
tissueMask = ~im2bw(gLayer,graythresh(gLayer));

%%
% Removes large marks/artifacts around the tissue
%
tissueMask = imclearborder(tissueMask);
%%
% Removes small marks/artifacts conatining fewer than 200 pixels round the
% tissue
%
tissueMask = bwareaopen(tissueMask,200);

%% 
% Fills the holes in the binary image
%
tissueMask = imfill(tissueMask,'holes');

%%
% Set a layer using the red plane, set at index 1, to find metastasis
%
rLayer = rgbImg(:,:,1);

%% 
% Apply a mask to remove artifaccts around the tissue
%
rLayer(~tissueMask) = 255;

%% 
% Set the sepeation threshold to 85% to distiguish the dark spots in the image
%
threshold = round(mean(mean(mean(rgbImg)))*0.85);
%%
% Convert to binary image using the red layer and threshhold value to
% select the darkest spots
%
metsMask = ~im2bw(rLayer,threshold/255);

%% 
% Calculates the percentage of the the dark spots in the image
%
metsFraction = nnz(metsMask)/nnz(tissueMask);

%%
% Prints the file names and their calculated percentages of soft metastisis
% in the cell tissues in the images
%
fprintf('Image (%s): %.3g%% \n',...
    imgName,100*metsFraction);

