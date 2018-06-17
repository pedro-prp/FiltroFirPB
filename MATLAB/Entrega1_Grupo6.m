%packages
pkg load signal;

%clear
clc;
clear all;

Fs = 8.5;
Ts = (1/Fs);
Ns = 512;
dt = [0:Ts:Ts*(Ns-1)];

f1 = 7;
f2 = 7.5;
f3 = 9.5;
f4 = 10;

x = sin(2*pi*f1*dt) + sin(2*pi*f2*dt) + sin(2*pi*f3*dt) + sin(2*pi*f4*dt);

plot(dt,x);
grid on;
N = 256;
W = [0.4 0.6];

b = fir1(N,W,'low');

a = 1;
freqz(b,a);




%nfft = length(y);
%nfft2 = 2.^nextpow2(nfft);
%
%fy = fft(y,nfft2);
%fy= fy(1:nfft2/2);
%
%xfft=Fs.*(0:nfft2/2-1)/nfft2;
%
%cut_off=1.5e3/Fs/2;
%order=256;
%
%h=fir1(order,cut_off,'low');
%
%con = conv(y,h);
%figure;
%plot(con);
