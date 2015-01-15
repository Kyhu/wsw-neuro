function [ fix_value ] = tanhFix( fix_input )
global tanh_x tanh_y;

x = double(fix_input);
[a,i] = min(abs(tanh_x - x));
y =  tanh_y(i);

fix_value = vfix(y);

end

