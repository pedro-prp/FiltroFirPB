
%clear
clc;
clear all;

Fs = 200e3;
Ts = (1/Fs);
dt = 0:Ts:5e-3-Ts;

f1=1e3;
f2=20e3;
f3=30e3;

x = 2 sin(2*pi*f1*dt)+2 sin(2*pi*f1*dt);