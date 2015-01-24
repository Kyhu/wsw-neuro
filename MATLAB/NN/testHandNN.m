% Test NN on hand
clear variables;

%% Load data
path('fixed/', path); 
path('data/', path); 

% Load model
load('nnModel.04-01-15_17-39-06.mat');

% Fix model
nn = nnfix(nn);
global tanh_x;
global tanh_y;
tanh_x = -1.023:0.001:1.024;
tanh_y = tanh(tanh_x);
nn.hidden.func = @tanhFix;
nn.output.func = @tanhFix;

% Load test picture
test_picture = imread('female_sad.ppm');

% Load parameters
threshold = 0.3;

%% Check every pixel in picture
skin = zeros(size(test_picture,1), size(test_picture,2));

for p = 1:size(test_picture,1)
    p
    for z = 1:size(test_picture,2)
        % Prepare data pixel
        rgb = [test_picture(p,z,1), test_picture(p,z,2), test_picture(p,z,3)];
        ycbr = rgb2ycbcr(rgb);
        hsv = rgb2hsv(rgb);
        
        input =[rgb';ycbr(2:3);hsv(1:2)'];
        input = double(input)./255;
        
        % Feed forward
%         nn = feedForward(nn, input);
        
        % FIX Feed forward
        	 nn = fix_feedForward(nn, input);
        
        skin(p,z) = nn.output.output;
        
    end;
end;

thresholded_skin = skin;
thresholded_skin(skin > threshold) = 1;
thresholded_skin(skin <= threshold) = 0;

%% Show results
figure(1);
imshow(thresholded_skin);
