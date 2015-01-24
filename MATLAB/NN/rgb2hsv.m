function [ hsv ] = rgb2hsv( rgb )

%warning('My HSV');
r = double(rgb(1)/255);
g = double(rgb(2)/255);
b = double(rgb(3)/255);

[Cmax,max_i]  = max([r,g,b]);
[Cmin,min_i] = min([r,g,b]);

delta = Cmax - Cmin;

if max_i == 1

    H = 60 * mod((g-b)/delta,6);
elseif max_i == 2
    H = 60 * ((b-r)/delta + 2);
elseif max_i == 3
    H = 60 * ((r-g)/delta + 4);
end

S = delta/Cmax;
V = Cmax;   

hsv = uint8([H 100*S 100*V]);
    
end

