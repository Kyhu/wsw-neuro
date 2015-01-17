tanh_x = -1.023:0.001:1.024;
tanh_y = tanh(tanh_x);
fix_tan = vfix(tanh_y);
bin(fix_tan')

