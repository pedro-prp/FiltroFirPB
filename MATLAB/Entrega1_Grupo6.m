
%clear
clc;
clear all;

Fs = 200e3;
Ts = (1/Fs);
dt = 0:Ts:5e-3-Ts;

f1=1e3;
f2=20e3;
f3=30e3;

y = 5*sin(2*pi*f1*dt) + 5*sin(2*pi*f2*dt) + 10*sin(2*pi*f3*dt);

plot(dt,y)