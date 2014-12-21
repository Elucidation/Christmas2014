clear;

% Read in the message we want to encode, whitespace at all.
% The encoded message may not have any character taht is not lowercase a-z
% or a space.
fid = fopen('encodedMessage.txt');
string_cell = textscan(fid, '%s', 'whitespace', '');
string_cell = string_cell{1}
string_to_code = char(string_cell(1,1))

n = 1000;
template_size = 16;

colormap('gray')

% Randomly create an image of different gray values.
coded_image = floor(double(rand(n)*255));

% View our newly created image, just for fun
imagesc(coded_image);
imwrite(uint8(coded_image), '../EncodedOutput/coded_image.bmp');

% Create the template images and the number matrix that we will give to
% decode the image.
createTemplateKeySquares(string_to_code, coded_image, n, template_size);