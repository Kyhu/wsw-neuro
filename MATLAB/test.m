%% Test wykrywania skroy przy pomocy sieci neuronowych z Toolboxa Matlabowego

clear all
close all
load('Compaq_data.mat');

%% Prepera data

HSV = zeros(size(RGB));
YCbCr = zeros(size(RGB));

for i = 1:length(RGB)
    HSV(i,:) = double(rgb2hsv(RGB(i,:)));
    YCbCr(i,:) = double(rgb2ycbcr(RGB(i,:)));
end

RGBCbCrHS = [RGB, YCbCr(:,2:3), HSV(:,1:2)];

inputs = RGBCbCrHS';
targets = skin';

%% Create Neural Network

% Create a Pattern Recognition Network
hiddenLayerSize = 18;
net = patternnet(hiddenLayerSize);

% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

% Train the Network
[net,tr] = train(net,inputs,targets);

% Test the Network
outputs = net(inputs);
performance = perform(net,targets,outputs)

% View the Network
view(net)

figure, plotperform(tr)

%% Test it

test_picture = imread('hand64.ppm');

result_picture = uint8(zeros(size(test_picture)));

result = zeros(size(test_picture,1),size(test_picture,2));

for i = 1:size(test_picture,1)
    for j = 1:size(test_picture,2)
        
        rgb = [test_picture(i,j,1), test_picture(i,j,2), test_picture(i,j,3)];
        ycbr = rgb2ycbcr(rgb);
        hsv = rgb2hsv(rgb);
        
        skin =  net([rgb';ycbr(2:3);hsv(1:2)']);
        result(i,j) = skin;
        if(skin > 0.01)
            result_picture(i,j,1) = 255;
            result_picture(i,j,2) = 255;
            result_picture(i,j,3) = 255;
        end;
    end;

end;

figure(3);
imshow(result_picture);

