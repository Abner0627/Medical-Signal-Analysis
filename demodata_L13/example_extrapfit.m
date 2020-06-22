%% Author: Lu, Chia-Feng 2014.01.02
clear, close all

%% initialize parameters
x=[5:0.25:10];
y=sin(x)+1;

% % add a zero padded period
% zerox=[3:0.25:4];
% zeroy=zeros(1,length(zerox));
% x=[zerox x];  
% y=[zeroy y]; 

xx=x; % the complete x data to be estimated

removeperiod=[1:5]; % the period of data to be removed [6:10]

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

plot(x,y,'o'),hold on,
xlim([xx(1) xx(end)])
pause
plot(xx,yy,'r.--')