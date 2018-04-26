function [ mask ] = parity( x,y )
% using parity

mask = mod(round(x)+round(y),2)==0;
mask = double(mask);

end

