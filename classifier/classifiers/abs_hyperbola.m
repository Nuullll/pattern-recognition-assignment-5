function [ mask ] = abs_hyperbola( x,y )
% symmetrical hyperbolas

mask = (abs(x-2) + abs(y-2) - 2*abs(x-2).*abs(y-2) < 1/3);
mask = double(mask);

end

