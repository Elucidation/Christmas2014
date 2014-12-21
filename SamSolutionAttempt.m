% Attempts Lizzy's Christmas 2014 challenge
%% Load stuff
addpath('./EncodedOutput');

codedImage = imread('coded_image.bmp');
randomCharMap = imread('randomCharMap.bmp');
%% Debug See stuff
%imshow(codedImage);
%imagesc(randomCharMap);


% Find position of first template
template = imread('template01.bmp');
[r,c] = findTemplateInImage(codedImage, template);
secret_letter = char( randomCharMap(r,c) + 96 );