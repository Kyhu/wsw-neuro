function [ fix_value ] = tanhFix( fix_input )
global tanh_y;
input = double(fix_input);

idx = double(vfix(input/4))*4096;
bin_idx = bin(fi(idx,1,11,0,'RoundingMethod','Floor'));
idx = idx + 1025;

if(idx < 1)
    idx = 1;
end
if(idx > 2048)
    idx = 2048;
end

y =  tanh_y(idx);

fix_value = vfix(y);

end

