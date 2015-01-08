%% Test wykrywania skroy przy pomocy sieci neuronowych z Toolboxa Matlabowego
%% Jeden 0neuron wyjsciowy i próg
clear variables
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

%% Train Neural Network
% Create a Pattern Recognition Network

%% Test it
test_picture = imread('hand64.ppm');
skin = zeros(size(test_picture,1), size(test_picture,2));
for i = 1:size(test_picture,1)
    i
    for j = 1:size(test_picture,2)
        rgb = [test_picture(i,j,1), test_picture(i,j,2), test_picture(i,j,3)];
        ycbr = rgb2ycbcr(rgb);
        hsv = rgb2hsv(rgb);
        skin(i,j) = classify([rgb';ycbr(2:3);hsv(1:2)']);
    end;
end;
figure(3);
imshow(skin);
