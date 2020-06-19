%% Author: Lu, Chia-Feng 2013.12.19
clear, close all
clc

%% input data
X=[47,47,45,46,46,46,44,46,47,47,45,47,47,55,48,48,48,49,49,49,48,48,49,49,50,50,50,51,51,52,44,45,46,47,47,48,48,48,48,49,49,49,49,49,49,49,50,55,53,50,50,51,51,50,50,51,52,52,50,51;];

factor1=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1;]; 
% ´îªÎÃÄ
factor2=[2,2,2,2,2,2,2,2,2,2,2,2,2,0,2,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0;]; 
% ¹B°Ê±¡ªp
dim=2;   % only the 2nd factor need to be tested by post-hoc

%% perform two way ANOVA using nanova 
[p,table,Stats]=anovan(X,{factor1 factor2})  % actually perform two-way ANOVA

figure,
[comp,m] = multcompare(Stats,'ctype','scheffe','dimension',dim)  % post-hoc on the 2nd factor


