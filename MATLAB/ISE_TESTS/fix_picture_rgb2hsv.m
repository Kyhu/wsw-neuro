function [ output_picture ] = fix_picture_rgb2hsv( input_picture )

height = size(input_picture,1);
width = size(input_picture,2);

output_picture = uint8(zeros(size(input_picture)));

for i = 1:width
    i
    for j = 1:height
        
        [h, s, v] = fix_rgb2hsv([input_picture(j,i,1),input_picture(j,i,2),input_picture(j,i,3)]);
        
        output_picture(j,i,1) = h;
        output_picture(j,i,2) = s;
        output_picture(j,i,3) = v;
    end
end

end

