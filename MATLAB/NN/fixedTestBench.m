path('fixed/', path); 
path('data/', path); 

model_name = 'nnModel.04-01-15_17-39-06.mat';
load(model_name);
nn = nnfix(nn);

global tanh_x;
global tanh_y;
tanh_x = -1.023:0.001:1.024;
tanh_y = tanh(tanh_x);
nn.hidden.func = @tanhFix;
nn.output.func = @tanhFix;

rgb = [222,151,99];
ycbr = rgb2ycbcr(rgb);
hsv = rgb2hsv(rgb);
input =[rgb';ycbr(2:3);hsv(1:2)'];
input = double(input)./255;

nn = fix_feedForward(nn, input);
% bin(nn.hidden.output)
bin(nn.output.output)

rgb = [15,187,54];
ycbr = rgb2ycbcr(rgb);
hsv = rgb2hsv(rgb);
input =[rgb';ycbr(2:3);hsv(1:2)'];
input = double(input)./255;

nn = fix_feedForward(nn, input);
% bin(nn.hidden.output)
bin(nn.output.output)

rgb = [50,66,63];
ycbr = rgb2ycbcr(rgb);
hsv = rgb2hsv(rgb);
input =[rgb';ycbr(2:3);hsv(1:2)'];
input = double(input)./255;

nn = fix_feedForward(nn, input);
% bin(nn.hidden.output)
bin(nn.output.output)

rgb = [148,99,56];
ycbr = rgb2ycbcr(rgb);
hsv = rgb2hsv(rgb);
input =[rgb';ycbr(2:3);hsv(1:2)'];
input = double(input)./255;

nn = fix_feedForward(nn, input);
% bin(nn.hidden.output)
bin(nn.output.output)
