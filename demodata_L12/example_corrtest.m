%% Author: Lu, Chia-Feng 2013.12.19
clear, close all
clc

%% input data
X=[13 32 47 54 69 73 76 77 85 87 89 89 90 91 94 95 95 95 98 99]'; % 免疫比率
Y=[208 184 145 9 65 32 87 118 8 6 124 55 9 33 43 9 7 10 16 12]';  % 死亡率

%% calculate the Pearson's correlation coefficient
[R_p,P_p]=corr(X,Y)  

%% calculate the Spearman's rank correlation coefficient
[R_s,P_s]=corr(X,Y,'type','spearman') 


%% plot the polynomial fit
N=1; % degree of polynomial

p = polyfit(X,Y,N);
figure,plot(X,Y,'o'),hold on
plot([min(X) max(X)],[p(1)*min(X)+p(2) p(1)*max(X)+p(2)],'k')
xlabel('兒童免疫比率'),ylabel('兒童死亡比率')