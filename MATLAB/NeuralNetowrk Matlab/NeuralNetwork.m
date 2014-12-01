inputNeurons = 2;
hiddenLayerNeurons = 3;
outputNeurons = 1;

hiddenLayerWireWeight = rand(inputNeurons, hiddenLayerNeurons); %polaczenia(+1 bias) , ilosc neuronow 
deltaHiddenLayerWireWeight = ones(inputNeurons, hiddenLayerNeurons); %polaczenia(+1 bias) , ilosc neuronow 
outputWireWeight = rand(hiddenLayerNeurons, outputNeurons); %polaczenia(+1 bias) , ilosc neuronow
deltaOutputWireWeight = ones(hiddenLayerNeurons, outputNeurons); %polaczenia(+1 bias) , ilosc neuronow

outputOfNeuronsINPUT = zeros(inputNeurons, 1);
outputOfNeuronsHIDDEN =  zeros(hiddenLayerNeurons,1);
outputOfNeuronsOUTPUT = zeros(outputNeurons,1);


input = [2, 2];
expectedOutput = 0;
results = 0;

    for i = 1:length(outputOfNeuronsINPUT)
        outputOfNeuronsINPUT(i) = input(i);
    end
    
    sum = zeros(length(outputOfNeuronsHIDDEN));
    [m, n] = size(hiddenLayerWireWeight);
    for i = 1:length(outputOfNeuronsHIDDEN)
        for j = 1:m
            sum(i) = sum(i) + hiddenLayerWireWeight(j,i)*outputOfNeuronsINPUT(j);
        end
        outputOfNeuronsHIDDEN(i) = tanh(sum(i));
    end
    
    sum = zeros(length(outputOfNeuronsOUTPUT));
    [m1, n1] = size(outputWireWeight);
    for i = 1:length(outputOfNeuronsOUTPUT)
        for j = 1:m1
            sum(i) = sum(i) + outputWireWeight(j,i) * outputOfNeuronsHIDDEN(j);
        end
        outputOfNeuronsOUTPUT(i) = tanh(sum(i));
    end
    
% % feedForward(input, outputOfNeuronsINPUT,
%                      outputOfNeuronsHIDDEN,
%                      outputOfNeuronsOUTPUT, hiddenLayerWireWeight, outputWireWeight);
% {   
% 
% 
% }
%backPropagation(expectedOutput);
%getResults(results);