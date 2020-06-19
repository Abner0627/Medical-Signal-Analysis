%% Author: Lu, Chia-Feng 2013.12.19
clear, close all
clc

%% input data
X1=[16,20,25,15,17,26,24,24,23,26,17,18,22,21,23,21,17,21,23,17,24,20,18,24,23,21,21,24,20,21,21,15,23,24,20,20;];
X2=[18,23,29,19,21,30,28,28,27,30,21,22,26,25,27,25,21,25,24,19,28,24,22,28,27,25,25,28,24,22,25,19,27,27,24,23;];

alpha=0.05;
%% perform paired t test
[H,P,Ci,Stats]=ttest(X1,X2,alpha)