%%Scripts trains NN with BP

clear variables;
%% Load data
path('fixed/', path); 
path('data/', path); 
load('MixedTrainingData');

iden_fnc = @(x) x;
sigmoid = @(x) 1./(1+exp(-5*x)) - 0.5;

% input_size, hidden_size, hidden_func, output_size, output_func
nn = initNN(7,13,@tanh,1,@tanh);

%% PARAMETERS
eta = 0.15;
alpha = 0.5;
epochs_number = 10;

%% TRAINING
for b = 1:epochs_number
    display(['Epoch: ', num2str(b)]);
    
    elements_number = length(RGBCbCrHS);
    for k = 1:elements_number
        if (mod(k,5000) == 0)
            display([ num2str(b), ': ', num2str(k/elements_number *100), '%']);
        end
        
        input = RGBCbCrHS(k,:);
        input = double(input')./255;
        expectedOutput = skin(k);
        
        %% FEED FORWARD        
        % Feed forward        
        nn = feedForward(nn, input);
        
        % FIX Feed forward        
        % nn = fix_feedForward(nn, input);
        
        %% BACK PROPAGATION
        
        % calc ERROR
        delta = expectedOutput - nn.output.output;
        mean_square_error = sqrt(delta*delta'/length(nn.output.size));
        
        % calc OUTPUT gradient
        nn.output.gradient = delta.*(1-nn.output.output.^2);
        
        % calc HIDDEN gradient
        delta = nn.hidden.weight*nn.output.gradient';
        nn.hidden.gradient = delta.*(1-nn.hidden.output.^2);        
        
        % update HIDDEN weights
        nn.hidden.deltaWeight = eta * nn.hidden.output * nn.output.gradient + alpha * nn.hidden.deltaWeight;
        nn.hidden.weight = nn.hidden.weight + nn.hidden.deltaWeight;
        
        % update INPUT weights
        nn.input.deltaWeight = eta * nn.input.output * nn.hidden.gradient' + alpha * nn.input.deltaWeight;
        nn.input.weights = nn.input.weights + nn.input.deltaWeight(:,1:end-1);        
        
    end
end

datatime_str = datestr(now, 'dd-mm-yy_hh-MM-ss');
save(['data/nnModel.', datatime_str, '.mat'],'nn','alpha','eta','epochs_number');