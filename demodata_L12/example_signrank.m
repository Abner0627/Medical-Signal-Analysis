%% Author: Lu, Chia-Feng 2013.12.19
clear, close all
clc

%% input data
X1=[224 80 75 541 74 85 293 -23 525 -38 508 255 525 1023];
X2=[213 95 33 440 -32 -28 445 -178 367 140 323 10 65 343];

alpha=0.05;

%% perform Wilcoxon sign rank test
[P,H,Stats]=signrank(X1,X2,'alpha',alpha)  
