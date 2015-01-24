function [ nn ] = nnfix( nn )
%NNFIX Fix all nn

nn.input.output = vfix(nn.input.output);
nn.input.weights = vfix(nn.input.weights);
nn.input.deltaWeight = vfix(nn.input.deltaWeight);

nn.hidden.output = vfix(nn.hidden.output);
nn.hidden.gradient = vfix(nn.hidden.gradient);
nn.hidden.weight = vfix(nn.hidden.weight);
nn.hidden.deltaWeight = vfix(nn.hidden.deltaWeight);

nn.output.output = vfix(nn.output.output);
nn.output.gradient = vfix(nn.output.gradient);

end

