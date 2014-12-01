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
    
    [m, n] = size(hiddenLayerWireWeight);
    for i = 1:length(outputOfNeuronsHIDDEN)
        for j = 1:m
            outputOfNeuronsHIDDEN(i) = outputOfNeuronsHIDDEN(i) + hiddenLayerWireWeight(j,i)*outputOfNeuronsINPUT(j);
        end
    end
    
    [m1, n1] = size(outputWireWeight);
    for i = 1:length(outputOfNeuronsOUTPUT)
        for j = 1:m1
            outputOfNeuronsOUTPUT(i) = outputOfNeuronsOUTPUT(i) + outputWireWeight(j,i) * outputOfNeuronsHIDDEN(j);
        end
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