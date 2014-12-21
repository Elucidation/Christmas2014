function [ ] = createTemplateKeySquares( string_to_code, coded_image, n, template_size )
%createTemplateKeySquares 
    % Create the random character map that we will find our letters with.
    randomCharMap = uint8(rand(n)*27);
    for i = 1:1:length(string_to_code)
        r = floor(rand*(n - template_size));
        c = floor(rand*(n - template_size));
        randomCharMap(r,c) = getCharAsNum(string_to_code(i));
        template_im = coded_image(r:r + template_size - 1, c:c + template_size - 1);
        imwrite(uint8(template_im), sprintf('../EncodedOutput/template%02d.bmp', i));
    end
    imwrite(uint8(randomCharMap), '../EncodedOutput/randomCharMap.bmp');
end

