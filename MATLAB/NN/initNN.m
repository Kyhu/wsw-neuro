function nn = initNN(input_size, hidden_size, hidden_func, output_size, output_func)

nn.input.size = input_size;
nn.hidden.size = hidden_size;
nn.output.size = output_size;

nn.input.output = ones(nn.input.size + 1, 1);  % inicialization with 1 - makes sure that bias will have const 1 output
nn.input.weights = 0.05 * rand(nn.input.size + 1, nn.hidden.size);
nn.input.deltaWeight = zeros(nn.input.size + 1, nn.hidden.size + 1);

nn.hidden.output = ones(nn.hidden.size + 1,1);
nn.hidden.gradient = zeros(nn.hidden.size + 1,1);
nn.hidden.weight = 0.05 * rand(nn.hidden.size + 1, nn.output.size); %polaczenia(+1 bias) , ilosc neuronow
nn.hidden.deltaWeight = zeros(nn.hidden.size + 1, nn.output.size); %polaczenia(+1 bias) , ilosc neuronow
nn.hidden.func = hidden_func;

nn.output.output = zeros(nn.output.size,1);
nn.output.gradient = zeros(nn.output.size,1);
nn.output.func = output_func;
end
