function [ charAsNum ] = getCharAsNum( charInput )
%getCharAsNum returns the letter of the alphabet that character is, or 0
%   for space.
if charInput == ' '
    charAsNum = 0;
else
    charAsNum = uint8(charInput) - uint8('a') + 1;
end
end

