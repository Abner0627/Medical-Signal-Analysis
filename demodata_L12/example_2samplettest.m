%% Author: Lu, Chia-Feng 2013.12.19
clear, close all
clc

%% input data
X=[19,21,13,20,24,23,19,22,17,23,27,17,24,24,25,19,25,14,22,13,29,27,24,23,16,17,23,15,21,23,17];
Y=[13,18,21,16,20,19,15,15,13,21,23,16,17,17,21,15,17,23,17,18,25,23,26,19,12,13,19,18,18,23];

alpha=0.05;
%% perform two sample t-test
[Hf,Pf] = vartest2(X,Y,alpha)    % check the homogeneity of variance
 
if Hf==0  % equal variance 
    [H,P,Ci,Stats]=ttest2(X,Y,alpha)
elseif Hf==1 % unequal variance
    [H,P,Ci,Stats]=ttest2(X,Y,alpha,'vartype','unequal')
end