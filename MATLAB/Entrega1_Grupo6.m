%   GRUPO 6 - 
%   Pedro Rodrigues Pereira - 17/0062686
%   Daniel de Sousa Oliveira Melo Veras - 17/0008371

%Fir Passa Baixa


%packages
pkg load signal;

%clear
clc;
clear all;

%definição
Fs = 10e3;
Ts = (1/Fs);
Ns = 256;
dt = [0:Ts:Ts*(Ns-1)];

%freqs de teste
f1 = 7.5e3;
f2 = 7.5e3;
f3 = 9.5e3;
f4 = 10e3;

%criação das senoides pra X
x = sin(2*pi*f1*dt) + sin(2*pi*f2*dt) + sin(2*pi*f3*dt) + sin(2*pi*f4*dt);

%plot de X
plot(dt,x);
title('Freq');
grid on;

%freq de corte normalizando
cut_off=8.5e3/Fs/2;
order=64;

%corte e filtro
b=fir1(order,cut_off,'low');
a=1;
y = filter(b,a,x);

%Plot de Y
figure;
plot(dt,y);
title('Freq filtrada');

%Plot Freq sem normalizar
figure;
freqz_plot(dt,y);
