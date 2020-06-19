%% Author: Lu, Chia-Feng 2013.12.19
clear, close all
clc

alpha=0.05;  
%% test of goodness of fit
%%% input data 
X_gf=[52 50;
      48 50]; %�Y�ɪO���ϭ�����

%%% perform Pearson's chi-squared test
[H_gf,P_gf,chisquare_gf]=ChiSquareTest(X_gf,alpha);

%% test of homogeneity of proportions
%%% input data 
X_hp=[3 10;
      8  7]; %�k�k�٦��P�_�H��

%%% perform Pearson's chi-squared test
[H_hp,P_hp,chisquare_hp]=ChiSquareTest(X_hp,alpha);

%% test of independence
%%% input data 
X_ind=[47  6;
        5  8]; %���P�_�B�P�V�P�_
 
%%% perform Pearson's chi-squared test
[H_ind,P_ind,chisquare_ind]=ChiSquareTest(X_ind,alpha);

%% test of significance of change
%%% input data 
X_sc=[15  11;
      32  18]; %�ﭲ�e�Pı�����������H�ơB�ﭲ��Pı�����������H�ơA�`�@�u��76�H�A���ﭲ�e�᪺�����ק벼
 
%%% perform Mcnemar's chi-squared test
[H_sc,P_sc,chisquare_sc]=mcnemar(X_sc,alpha);
