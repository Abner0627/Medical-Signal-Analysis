%% Author: Lu, Chia-Feng 2013.12.19
clear, close all
clc

alpha=0.05;  
%% test of goodness of fit
%%% input data 
X_gf=[52 50;
      48 50]; %耏簧狾タはΩ计

%%% perform Pearson's chi-squared test
[H_gf,P_gf,chisquare_gf]=ChiSquareTest(X_gf,alpha);

%% test of homogeneity of proportions
%%% input data 
X_hp=[3 10;
      8  7]; %╧觅Θ籔计

%%% perform Pearson's chi-squared test
[H_hp,P_hp,chisquare_hp]=ChiSquareTest(X_hp,alpha);

%% test of independence
%%% input data 
X_ind=[47  6;
        5  8]; %も籔稰琕籔
 
%%% perform Pearson's chi-squared test
[H_ind,P_ind,chisquare_ind]=ChiSquareTest(X_ind,alpha);

%% test of significance of change
%%% input data 
X_sc=[15  11;
      32  18]; %э玡稰谋そキぃそキ计э稰谋そキぃそキ计羆Τ76癸э玡そキщ布
 
%%% perform Mcnemar's chi-squared test
[H_sc,P_sc,chisquare_sc]=mcnemar(X_sc,alpha);
