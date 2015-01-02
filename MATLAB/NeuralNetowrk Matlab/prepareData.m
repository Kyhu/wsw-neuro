clear all;
close all;

load('MixedInputs.mat');


YCbCr = m_rgb2ycbcr(randomInput(:,1:3));

HSV = m_rgb2hsv(randomInput(:,1:3));

RGBCbCrHS = [randomInput(:,1:3), YCbCr(:,2:3), HSV(:,1:2)];

skin = randomInput(:,4);