%% Author: Lu, Chia-Feng 2014.01.02
clear, close all

%% initialize parameters
samplerate=1000; % in Hz
N=1024; % data length

sinefreq=20; % in Hz
phaseshift=1*pi; % in radian
SNR=20; % in dB

fmax=sinefreq;
fmin=1;

forder=6;   % the filter order of 2-stage IIR filter
passband=[18 22]; % in Hz
%% generate simulated signals 
t=[1:N]/samplerate;

fchirp=[1:N]*((fmax-fmin)/N)+fmin;
sig_chirp=sin(pi*t.*fchirp);   

sig1=sin(2*pi*sinefreq*t)+sig_chirp;
sig2=sin(2*pi*sinefreq*t+phaseshift)+sig_chirp; % constant phase shifting
% sig2=sin(2*pi*sinefreq*t+linspace(phaseshift,0,N))+sig_chirp;  % time-variant phase shifting
% sig2=sin(2*pi*sinefreq*t+[linspace(phaseshift,0,N/2) linspace(0,phaseshift,N/2)])+sig_chirp;  % time-variant phase shifting

% sig1=awgn(sig1,SNR);  % add white noise to signal according to a specific SNR
% sig2=awgn(sig2,SNR);  % add white noise to signal according to a specific SNR

figure, 
plot(t,sig1),xlim([t(1) t(end)]), hold on
title([num2str(sinefreq) '-Hz Sine Waves'])
plot(t,sig2,'r'),xlim([t(1) t(end)])
xlabel('Time (s)')
legend('original','phase shifting')

%% bandpass filtering
sig1=filter_2sIIR(sig1,passband,samplerate,forder,'bandpass');
sig2=filter_2sIIR(sig2,passband,samplerate,forder,'bandpass');

figure, 
plot(t,sig1),xlim([t(1) t(end)]), hold on
title([num2str(sinefreq) '-Hz Sine Waves'])
plot(t,sig2,'r'),xlim([t(1) t(end)])
xlabel('Time (s)')
legend('original','phase shifting')

%% calculate instantaneous phase using hilbert transform (HT)
sig1_hb=hilbert(sig1);
sig1_intphase=unwrap(angle(sig1_hb));

sig2_hb=hilbert(sig2);
sig2_intphase=unwrap(angle(sig2_hb));

figure,
subplot(2,1,1),plot(t,sig1_intphase/pi), hold on
plot(t,sig2_intphase/pi,'r') 
title('Instantaneous phase'),ylabel('(pi)')
xlim([t(1) t(end)])

subplot(2,1,2),plot(t,(sig2_intphase-sig1_intphase)/pi) 
xlabel('Time (s)')
title('Instantaneous phase difference'),ylabel('(pi)')
xlim([t(1) t(end)])



