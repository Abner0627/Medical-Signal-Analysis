%% Author: Lu, Chia-Feng 2013.12.
clear, close all
clc

path(path,'.\ICC');
%% input data
X1=[10.5 8.4 7.6 8.1 8.9 9.5 11.3 10.0 9.8 13.6]'; % «e´ú
X2=[10.1 9.0 8.1 7.8 9.0 8.8 11.4 10.5 9.4 13.2]'; % «á´ú

X=[X1 X2];
alpha=0.05;

ICCtype='A-1';  % absolute agreement of measurement 
%% calculate the intraclass correlation coefficient
[r, LB, UB, F, df1, df2, p] = ICC(X, ICCtype, alpha)

