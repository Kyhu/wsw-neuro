%% INICJALIZACJA SIECI
clear variables;
INPUTNeurons_Num = 3;
HIDDENNeurons_Num = 4;
OUTPUTNeurons_Num = 2;

INPUTNeurons_Output = ones(INPUTNeurons_Num + 1, 1);                            % inicialization with 1 - makes sure that bias will have const 1 output
INPUTNeurons_Weight = rand(INPUTNeurons_Num + 1, HIDDENNeurons_Num);           
INPUTNeurons_DeltaWeight = zeros(INPUTNeurons_Num + 1, HIDDENNeurons_Num + 1);

HIDDENNeurons_Output = ones(HIDDENNeurons_Num + 1,1);
HIDDENNeurons_Gradient = zeros(HIDDENNeurons_Num + 1,1);
HIDDENNeurons_Weight = rand(HIDDENNeurons_Num + 1, OUTPUTNeurons_Num); %polaczenia(+1 bias) , ilosc neuronow
HIDDENNeurons_DeltaWeight = zeros(HIDDENNeurons_Num + 1, OUTPUTNeurons_Num); %polaczenia(+1 bias) , ilosc neuronow

OUTPUTNeurons_Output = zeros(OUTPUTNeurons_Num,1);
OUTPUTNeurons_Gradient = zeros(OUTPUTNeurons_Num,1);

%% PARAMETERS
eta = 0.15;
alpha = 0.5;
recentAverageError = 0;

% TEST
% input = [0, 0, 0];

for k = 1:20000
    value1 = round(rand());
    value2 = round(rand());
    value3 = round(rand());
    input = [value1, value2, value3];
    expectedOutput(1) = or(value1, or(value2, value3));
    expectedOutput(2) = and(value1, and(value2, value3));
%% FEED FORWARD

%init INPUT output
INPUTNeurons_Output(1:INPUTNeurons_Num) = input(1:INPUTNeurons_Num);
  
%calc HIDDEN output
HIDDENNeurons_Output(1:end-1) = tanh(INPUTNeurons_Output' * INPUTNeurons_Weight);

%calc OUTPUT output
OUTPUTNeurons_Output = tanh(HIDDENNeurons_Output' * HIDDENNeurons_Weight);
    
%% BACK PROPAGATION

% calc ERROR
delta = expectedOutput - OUTPUTNeurons_Output;
mean_square_error = sqrt(delta*delta'/length(OUTPUTNeurons_Num))
            
% calc OUTPUT gradient
OUTPUTNeurons_Gradient = delta.*(1-OUTPUTNeurons_Output.^2);
    
% calc HIDDEN gradient
delta = HIDDENNeurons_Weight*OUTPUTNeurons_Gradient';
HIDDENNeurons_Gradient = delta.*(1-HIDDENNeurons_Output.^2);

%%
% update HIDDEN weights
HIDDENNeurons_DeltaWeight = eta * HIDDENNeurons_Output * OUTPUTNeurons_Gradient + alpha * HIDDENNeurons_DeltaWeight;
HIDDENNeurons_Weight = HIDDENNeurons_Weight + HIDDENNeurons_DeltaWeight;
    
% update INPUT weights
INPUTNeurons_DeltaWeight = eta * INPUTNeurons_Output * HIDDENNeurons_Gradient' + alpha * INPUTNeurons_DeltaWeight;
INPUTNeurons_Weight = INPUTNeurons_Weight + INPUTNeurons_DeltaWeight(:,1:end-1);

OUTPUTNeurons_Output;

end