function [ fix_value ] = tanhFix( fix_input )

% Przed uzyciem wykonac poniższe linie (Albo cos podobnego)
% z = -3:0.002:3;
% sig = tanh(z);

global z sig;

x = double(fix_input);

[a,i] = min(abs(z - x));
y =  sig(i);

fix_value = vfix(y);

end

