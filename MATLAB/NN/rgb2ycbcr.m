function ycbcr = rgb2ycbcr( rgb )

ycbcr_A = [0.2990,0.5870, 0.1140; -0.1687,-0.3313,0.5000;0.5000,-0.4187,-0.0813];
ycbcr_B = [0;128;128];

rgb_double = double(rgb);
ycbcr_double = ycbcr_A * rgb_double' + ycbcr_B;
ycbcr = uint8(ycbcr_double);     



