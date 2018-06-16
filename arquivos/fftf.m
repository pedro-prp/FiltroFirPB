% Plota a transformada de Fourier de um sinal

function [X,freq]=fftf(x,Fs);
N=length(x);
k=0:N-1;
T=N/Fs; %Tempo
freq=k/T;  %criar faixa de freqüência
X=fftn(x)/N; %Normaliza os dados
cutOff=ceil(N/2);
X=X(1:cutOff);
freq=freq(1:cutOff);
plot(freq,abs(X));
 title('Espectro de Frequencias do Sinal (FFT)');
 xlabel('Frequência (Hz)');
 ylabel('Amplitude');