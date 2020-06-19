%% Author: Lu, Chia-Feng 2013.12.19
clear, close all
clc

%% input data
X=[34.5 37.5 39.5 40.0 45.5 47.0 47.0 47.5 48.7 49.0 51.0 51.0 52.0 53.0 54.0 54.0 55.0 56.5 57.0 58.5 58.5];
Y=[28.0 35.0 37.0 37.0 43.5 44.0 45.5 46.0 48.0 48.3 48.7 51.0 52.0 53.0 53.0 54.0 54.0 55.0];

alpha=0.05;

%% perform Wilcoxon rank sum test
[P,H,Stats]=ranksum(X,Y,'alpha',alpha)  
