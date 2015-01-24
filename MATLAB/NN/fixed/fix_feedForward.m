function nn = fix_feedForward(nn, input)

fix_input = vfix([input;1]);

% init INPUT output
nn.input.output = fix_input;

% calc HIDDEN output
sumn = vfix(zeros(nn.hidden.size + 1,1));

for i = 1:nn.hidden.size
    for j = 1:nn.input.size + 1
        sumn(i) = sumn(i) + multFixed(nn.input.weights(j,i), nn.input.output(j));
    end
    nn.hidden.output(i) = nn.hidden.func(sumn(i));
end

% calc OUTPUT output
sumn = vfix(zeros(nn.hidden.size + 1,1));

for i = 1:nn.output.size
    for j = 1:nn.hidden.size + 1
        sumn(i) = sumn(i) + multFixed(nn.hidden.weight(j,i), nn.hidden.output(j));
    end
    nn.output.output(i) = nn.output.func(sumn(i));
end