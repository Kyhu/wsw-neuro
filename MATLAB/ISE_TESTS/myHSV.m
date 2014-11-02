%% Read image
test_picture = imread('geirangerfjord_64.ppm');
subplot(2,2,1);
imshow(test_picture);

%% Change space to HSV
matlab_hsv_picture = uint8(rgb2hsv(test_picture)*255);
my_hsv_picture = fix_picture_rgb2hsv(test_picture);


%% Show image
subplot(2,2,2);
imshow(imabsdiff(matlab_hsv_picture,my_hsv_picture));
subplot(2,2,3);
imshow(matlab_hsv_picture);
subplot(2,2,4);
imshow(my_hsv_picture);