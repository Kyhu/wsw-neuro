model_name = 'nnModel.18-01-15_13-10-42.mat';
load(model_name);
nn = nnfix(nn);

for i = 1:size(nn.input.weights,2)
    w_string = reshape(bin(nn.input.weights(:,i)'),1,[]);
    hid_bin_weights = strrep(w_string, ' ', '');
    form_h = ['reg [17*8-1:0] wh_', num2str(i), ' = 136''b', hid_bin_weights, ';'];
    disp(form_h);
end

w_string = reshape(bin(nn.hidden.weight'),1,[]);
out_bin_weights = strrep(w_string, ' ', '');
form_o = ['reg [17*14-1:0] wout = 238''b', out_bin_weights ';'];
disp(form_o);

