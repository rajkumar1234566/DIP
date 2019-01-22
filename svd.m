clc; clear; close all;
%Rajkumar Amgoth
%BT16ECE019
img = rgb2gray(imread('sample.jpg'));
subplot(1,2,1);
imshow(img);
title('Grayscale');
img = double(img);

[U, S, V] = svd(img);
I = uint8(U*S*V');

subplot(1,2,2);
imshow(I);
title('Reconstructed from USV values');