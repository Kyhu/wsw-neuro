% INICJALIZACJA SIECI
% clear all;
INPUTNeurons_Num = 7;
HIDDENNeurons_Num = 13;
OUTPUTNeurons_Num = 1;

INPUTNeurons_Output = ones(INPUTNeurons_Num + 1, 1);                            % inicialization with 1 - makes sure that bias will have const 1 output
INPUTNeurons_Weight = rand(INPUTNeurons_Num + 1, HIDDENNeurons_Num);
INPUTNeurons_DeltaWeight = zeros(INPUTNeurons_Num + 1, HIDDENNeurons_Num + 1);

HIDDENNeurons_Output = ones(HIDDENNeurons_Num + 1,1);
HIDDENNeurons_Gradient = zeros(HIDDENNeurons_Num + 1,1);
HIDDENNeurons_Weight = rand(HIDDENNeurons_Num + 1, OUTPUTNeurons_Num); %polaczenia(+1 bias) , ilosc neuronow
HIDDENNeurons_DeltaWeight = zeros(HIDDENNeurons_Num + 1, OUTPUTNeurons_Num + 1); %polaczenia(+1 bias) , ilosc neuronow

OUTPUTNeurons_Output = zeros(OUTPUTNeurons_Num,1);
OUTPUTNeurons_Gradient = zeros(OUTPUTNeurons_Num,1);

% PARAMETERS
eta = 0.15;
alpha = 0.5;
recentAverageError = 0;

% TEST
% input =
% expectedOutput = 0;

% for b = 1:10
%     b

test_picture = imread('hand64.ppm');
skin = zeros(size(test_picture,1), size(test_picture,2));
for i = 1:size(test_picture,1)
    i
    for j = 1:size(test_picture,2)
        rgb = [test_picture(i,j,1), test_picture(i,j,2), test_picture(i,j,3)];
        ycbr = rgb2ycbcr(rgb);
        hsv = rgb2hsv(rgb);

        input =[rgb';ycbr(2:3);hsv(1:2)'];
        
% for k = 1:length(RGBCbCrHS)
%     if(mod(k,100) == 0)
%         k
%     end
%     input = RGBCbCrHS(k,:);
%     expectedOutput = skin(k);
    %FEED FORWARD
    
    %init INPUT output
    for i = 1:INPUTNeurons_Num
        INPUTNeurons_Output(i) = input(i);
    end
    
    %calc HIDDEN output
    sum = zeros(length(HIDDENNeurons_Output));
    [m, n] = size(INPUTNeurons_Weight);
    for i = 1:length(HIDDENNeurons_Output) - 1
        for j = 1:m
            sum(i) = sum(i) + INPUTNeurons_Weight(j,i)*INPUTNeurons_Output(j);
        end
        HIDDENNeurons_Output(i) = tanh(sum(i));
    end
    
    %calc OUTPUT output
    sum = zeros(length(OUTPUTNeurons_Output));
    [m1, n1] = size(HIDDENNeurons_Weight);
    for i = 1:length(OUTPUTNeurons_Output)
        for j = 1:m1
            sum(i) = sum(i) + HIDDENNeurons_Weight(j,i) * HIDDENNeurons_Output(j);
        end
        OUTPUTNeurons_Output(i) = tanh(sum(i));
    end
    
    % % BACK PROPAGATION
    %
    % % calc ERROR
    % error = 0;
    % for i = 1:length(OUTPUTNeurons_Output)
    %     delta = expectedOutput(i) - OUTPUTNeurons_Output(i);
    %     error = error + delta*delta;
    % end
    % error = error / length(OUTPUTNeurons_Output);
    % error = sqrt(error);
    %
    % %recentAverageError = (recentAverageError * m_recentAverageSmoothingFactor + error)/ (m_recentAverageSmoothingFactor + 1.0);
    %
    % % calc OUTPUT gradient
    % for i = 1:length(OUTPUTNeurons_Output)
    %     delta = expectedOutput(i) - OUTPUTNeurons_Output(i);
    %     OUTPUTNeurons_Gradient(i) = delta*(1 - (OUTPUTNeurons_Output(i)*OUTPUTNeurons_Output(i)));
    % end
    %
    % % calc HIDDEN gradient
    %
    % for i = 1:length(HIDDENNeurons_Output)
    %     sum = 0;
    %     %%sumDOW
    %     for j = 1:length(OUTPUTNeurons_Output)
    %         sum = sum + HIDDENNeurons_Weight(i)*OUTPUTNeurons_Gradient(j);
    %     end
    %     %
    %     HIDDENNeurons_Gradient(i) = sum*(1- HIDDENNeurons_Output(i)*HIDDENNeurons_Output(i));
    % end
    % %%
    % % update HIDDEN weights
    % for i = 1:length(OUTPUTNeurons_Output)
    %     for j = 1:length(HIDDENNeurons_Output)
    %         newHIDDENNeurons_DeltaWeight = eta * HIDDENNeurons_Output(j) * OUTPUTNeurons_Gradient(i) + alpha * HIDDENNeurons_DeltaWeight(j,i);
    %         HIDDENNeurons_DeltaWeight(j,i) = newHIDDENNeurons_DeltaWeight;
    %         HIDDENNeurons_Weight(j,i) = HIDDENNeurons_Weight(j,i) + newHIDDENNeurons_DeltaWeight;
    %     end
    % end
    %
    % % update INPUT weights
    % for i = 1:length(HIDDENNeurons_Output) - 1
    %     for j = 1:length(INPUTNeurons_Output)
    %         newINPUTNeurons_DeltaWeight = eta * INPUTNeurons_Output(j) * HIDDENNeurons_Gradient(i) + alpha * INPUTNeurons_DeltaWeight(j,i);
    %         INPUTNeurons_DeltaWeight(j,i) = newINPUTNeurons_DeltaWeight;
    %         INPUTNeurons_Weight(j,i) = INPUTNeurons_Weight(j,i) + newINPUTNeurons_DeltaWeight;
    %     end
    % end
    
    % OUTPUTNeurons_Output
    
% end

        skin(i,j) = OUTPUTNeurons_Output;
    end;
end;
figure(3);
imshow(skin);
% end