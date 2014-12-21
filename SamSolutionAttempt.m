% Attempts Lizzy's Christmas 2014 challenge
%% Load stuff
addpath('./EncodedOutput');

codedImage = imread('coded_image.bmp');
randomCharMap = imread('randomCharMap.bmp');
%% Debug See stuff
%imshow(codedImage);
%imagesc(randomCharMap);


% Find position of first template
message = '';
for i = 1:18
    % Load template
    template = imread(sprintf('template%02d.bmp', i));
    % Find template location in image
    [r,c] = findTemplateInImage(codedImage, template);
    % Map to randomCharMap and add character to message
    message = strcat(message, char(randomCharMap(r,c) + 96 ));
end
fprintf('Secret message: %s\n', message);