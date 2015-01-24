function nn = feedForward(nn, input)

% init INPUT output
for i = 1:nn.input.size
    nn.input.output(i) = input(i);
end

% calc HIDDEN output
sumn = zeros(nn.hidden.size + 1,1);

for i = 1:nn.hidden.size
    for j = 1:nn.input.size + 1
        sumn(i) = sumn(i) + nn.input.weights(j,i) * nn.input.output(j);
    end
    nn.hidden.output(i) = nn.hidden.func(sumn(i));
end

% calc OUTPUT output
sumn = zeros(nn.output.size + 1,1);

for i = 1:nn.output.size
    for j = 1:nn.hidden.size + 1
        sumn(i) = sumn(i) + nn.hidden.weight(j,i) * nn.hidden.output(j);
    end
    nn.output.output(i) = nn.output.func(sumn(i));
end