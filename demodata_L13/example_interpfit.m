%% Author: Lu, Chia-Feng 2014.01.02
clear, clc, close all

%% initialize parameters
x=0:0.25:10;
y=sin(x);
xx=x;  % the complete x data to be estimated

removeperiod=[1:4 11:20]; % the period of data to be removed, try [11:20], [11:25]

x(removeperiod)=[];  % remove parts of data points in purpose
y(removeperiod)=[];  % remove parts of data points in purpose

method='spline'; 
%%% the method of 1-D interpolation
% nearest: Nearest neighbor interpolation
% linear: Linear interpolation (default)
% spline: Cubic spline interpolation
% pchip: Piecewise cubic Hermite interpolation

SNR=25; % in dB
%% add white noise
% y=awgn(y,SNR);  % add white noise to signal according to a specific SNR

%% perform cubic spline data interpolation
yy=interp1(x,y,xx,method);

figure,
plot(x,y,'o'),hold on,
xlim([xx(1) xx(end)])
plot(xx,yy,'r.--')