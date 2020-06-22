%% Author: Lu, Chia-Feng 2014.01.02
clear, clc, close all

%% initialize data
method='spline'; 
%%% the method of 2-D interpolation
% nearest: Nearest neighbor interpolation
% linear: Linear interpolation (default)
% spline: Cubic spline interpolation

interpRes=0.05;  % the resolution used for 2-D interpolation

%%% generate a 5 x 5 mesh and data value
[X,Y]=meshgrid(1:5,1:5);
V=zeros(5);
V(2,2)=1; V(2,3)=1.2; V(3,2)=1.1; V(3,3)=1.3; V(3,4)=1.1;
V(4,2)=1.3;V(4,3)=1.6;V(4,4)=1.4;V(4,5)=1.1;
V(5,2)=1.1;V(5,3)=1.2;V(5,4)=1.1;V(5,5)=1.1;

%% interpolate the data 
[Xf,Yf]=meshgrid(1:interpRes:5,1:interpRes:5);
Vf=interp2(X,Y,V,Xf,Yf);

figure,
colormap("jet")
subplot(1,2,1),imagesc(V)
subplot(1,2,2),imagesc(Vf)

figure,
colormap("jet")
subplot(1,2,1),surf(X,Y,V)
subplot(1,2,2),surf(Xf,Yf,Vf)
