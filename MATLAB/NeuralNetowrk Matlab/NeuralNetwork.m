inputNeurons = 2;
hiddenLayerNeurons = 3;
outputNeurons = 1;

eta = 0.15;
alpha = 0.5;

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
    
%%backPropagation;
error = 0;

    for i = 1:length(outputOfNeuronsOUTPUT)
        delta = expectedOutput(i) - outputOfNeuronsOUTPUT(i);
        error = error + delta*delta;
    end
    
    error = error / length(outputOfNeuronsOUTPUT);
    error = sqrt(error);
    
    %%%%%%%%%%
%calculate overall net error
 %   recentAverageError = recentAverageError + 
%calculate output layer gradients

gradientOfOutputNeurons = outputOfNeuronsOUTPUT;
    for i = 1:length(outputOfNeuronsOUTPUT)
        delta = expectedOutput(i) - outputOfNeuronsOUTPUT(i);
        gradientOfOutputNeurons(i) = delta*(1- outputOfNeuronsOUTPUT(i)*outputOfNeuronsOUTPUT(i));
    end
    
    
%calculatd gradiens on hidden layer
sum = 0;

    for i = 1:length(outputOfNeuronsINPUT)
        %%sumDOW
        for i = 1:length(outputOfNeuronsHIDDEN)
            sum = sum + hiddenLayerWireWeight(i)*outputOfNeuronsHIDDEN(i);
        %
        gradientOfHiddenNeurons(i) = sum*(1- outputOfNeuronsHIDDEN(i)*outputOfNeuronsHIDDEN(i));
        end
    end
%for all layers from outputs to first hidden layer,
%update weight

    for i = 1:length(outputOfNeuronsHIDDEN)
        newDeltaOutputWireWeight =  2;%...
           % eta*outputOfNeuronsHIDDEN(i)*gradientOfOutputNeurons(i) ...
          %  + alpha*deltaOutputWireWeight(i);
        deltaOutputWireWeight(i) = newDeltaOutputWireWeight;
        outputWireWeight(i) = outputWireWeight(i) + newDeltaOutputWireWeight;
    end
    
    for i = 1:length(outputOfNeuronsINPUT)
        newDeltaHiddenLayerWireWeight =  2;%...
           % eta*outputOfNeuronsINPUT(i)*gradientOfHiddenNeurons(i) ...
           % + alpha*deltaHiddenLayerWireWeight(i);
        deltaHiddenLayerWireWeight(i) = newDeltaHiddenLayerWireWeight;
        hiddenLayerWireWeight(i) = hiddenLayerWireWeight(i) + newDeltaHiddenLayerWireWeight;
    end