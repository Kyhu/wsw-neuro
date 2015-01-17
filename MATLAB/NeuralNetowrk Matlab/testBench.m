model_name = 'nnModel.04-01-15_17-39-06.mat';
load(model_name);
nn = nnfix(nn);

global tanh_x;
global tanh_y;
tanh_x = -1:0.002:1;
tanh_y = tanh(tanh_x);
nn.hidden.func = @tanhFix;
nn.output.func = @tanhFix;

fix_feedForward(nn, [0; 0; 0; 0; 0; 0; 0]);
bin(nn.output.output)