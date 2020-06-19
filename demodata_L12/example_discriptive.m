%% Author: Lu, Chia-Feng 2013.12.20
clear, close all
clc

%% input data: an example of scores
X=[55,68,56,56,65,73,76,76,72,82,82,83,61,62,67,62,63,66,66,68,73,75,75,78,79,86,90,69,69,70,60,91,60,71,72,85,72,78,67,80;];

dim=2; % the selected dimension to perform the statistics

binNumber=10;  % the number of bins used for histogram
binCenter=min(X):5:max(X);  % the center of bins used for histogram
%% descriptive statistics
% measure of central location
MeanValue=mean(X,dim);
MedianValue=median(X,dim);
[ModeValue,ModeCount]=mode(X,dim);

% measure of variation
RangeValue=range(X,dim);
StdValue=std(X,0,dim);
% return

% histogram
[Count,Center]=histogram(X,binNumber);
figure,bar(Center,Count)
xlabel('Scores'),ylabel('Counts')

[Count,Center]=hist(X,binCenter);
figure,bar(Center,Count)
xlabel('Scores'),ylabel('Counts')