function [ mask ] = two_lines( x,y )
% two lines

mask = (abs(x-2) - abs(y-2)).^2 < 1/4;
mask = double(mask);

end

