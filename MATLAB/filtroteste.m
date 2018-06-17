%packages
pkg load signal;

%reset
clear all;
close all;
clc;

Fs=10e3; 
Ts=1/Fs; 
Ns=256; 
t=[0:Ts:Ts*(Ns-1)]; 

f1=6.5e3;
f2=7.5e3;
f3=9.5e3;
f4=10.5e3;
x1=sin(2*pi*f1*t); 
x2=sin(2*pi*f2*t);
x3=sin(2*pi*f3*t);
x4=sin(2*pi*f4*t);
x=x1+x2+x3+x4; 
grid on;
N=64;
cut=8.5e3/Fs/2;
B=fir1(N,cut,'low');
A=1; 
freqz(B,A); %Plot frequency response - both amp and phase response.
%figure; %Create a new figure window, so previous one isn't lost.
%subplot(2,1,1); %Two subplots will go on this figure window.
Npts=200;
%plot(t(1:Npts),x(1:Npts)) %Plot first Npts of this 4-tone input signal
%title('Time Plots of Input and Output');
%xlabel('time (s)');
%ylabel('Input Sig');
% %Now apply this filter to our 4-tone test sequence
y = filter(B,A,x);
figure;
%subplot(2,1,2); %Now go to bottom subplot.
freqz_plot(t(1:Npts),y(1:Npts)); %Plot first Npts of filtered signal.
%xlabel('time (s)');
%2
%3
%ylabel('Filtered Sig');
%figure; %Create a new figure window, so previous one isn't lost.
%subplot(2,1,1);
%xfftmag=(abs(fft(x,Ns))); %Compute spectrum of input signal.
%xfftmagh=xfftmag(1:length(xfftmag)/2);
% %Plot only the first half of FFT, since second half is mirror imag
% %the first half represents the useful range of frequencies from
% %0 to Fs/2, the Nyquist sampling limit.
%f=[1:1:length(xfftmagh)]*Fs/Ns; %Make freq array that varies from
% %0 Hz to Fs/2 Hz.
%plot(f,xfftmagh); %Plot frequency spectrum of input signal
%title('Input and Output Spectra');
%xlabel('freq (Hz)');
%ylabel('Input Spectrum');
%subplot(2,1,2);
%yfftmag=(abs(fft(y,Ns)));
%yfftmagh=yfftmag(1:length(yfftmag)/2);
% %Plot only the first half of FFT, since second half is mirror image
% %the first half represents the useful range of frequencies from
% %0 to Fs/2, the Nyquist sampling limit.
%plot(f,yfftmagh); %Plot frequency spectrum of input signal
%xlabel('freq (Hz)'); 
