%% Author: Lu, Chia-Feng 2013.12.19
clear, close all
clc

%% input data
X=[1.2,0.8,1.4,0.7,1.2,0.7,1.0,1.0,1.1,0.8,1.3,0.9,1.3,1.0,0.9,1.2,0.9,0.9,1.0,1.1,1.2,1,0.9,1.0,0.8,1.1,1.1,1.0,1.0,1.1;];
M=1; % the expected mean

alpha=0.05;

%% perform one sample t-test
[H,p,Ci,Stats]=ttest(X,M,alpha)  
