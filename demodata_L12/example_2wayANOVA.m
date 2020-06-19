%% Author: Lu, Chia-Feng 2013.12.19
clear, close all
clc

%% input data
X11=[48,32,52,40,60,32,52,48,44,54]';
X12=[84,88,100,68,76,88,100,68,76,84]';
X21=[62,72,80,60,54,52,52,72,72,78]';
X22=[74,44,44,36,36,32,40,32,40,52]';
rep=10;  % measure of each condition

X=[X11 X12;X21 X22]; % columns represent 考試與否; rows represent 老師風格; each condition for 10 students
%      考試   不考
% 嚴肅  X11   X12
% 輕鬆  X21   X22

%% perform two way ANOVA using anova2
[p,table,Stats]=anova2(X,rep)  % two-way ANOVA
% in this example, you need to test main effect using 1-way ANOVA one-by-one
% because the interaction between factor 1 and 2 is significant

%% perform one way ANOVA for testing main effect
% test the main effect of 老師風格 for 考試與否=考試
X=[X11; X21]';
group=[ones(1,rep) ones(1,rep)*2];
[p,ANOVAstats,Stats]=anova1(X,group)  % one-way ANOVA

% test the main effect of 老師風格 for 考試與否=不考
X=[X12; X22]';
group=[ones(1,rep) ones(1,rep)*2];
[p,ANOVAstats,Stats]=anova1(X,group)  % one-way ANOVA

% test the main effect of 考試與否 for 老師風格=嚴肅
X=[X11' X12'];
group=[ones(1,rep) ones(1,rep)*2];
[p,ANOVAstats,Stats]=anova1(X,group)  % one-way ANOVA

% test the main effect of 考試與否 for 老師風格=輕鬆
X=[X21' X22'];
group=[ones(1,rep) ones(1,rep)*2];
[p,ANOVAstats,Stats]=anova1(X,group)  % one-way ANOVA



