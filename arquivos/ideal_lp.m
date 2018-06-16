function hd = ideal_lp(wc,M)

%  Filtro passa baixa ideal
% ----------------------------
% [hd] = ideal_lp(wc,M)
% hd = resposta ao impulso ideal entre 0 e M-1
% wc = frequencia de corte em radianos
% M = Comprimento do filtro

alpha=(M-1)/2;
n=[0:M-1];
m=n-alpha+eps;  % eps = numero muito pequeno para evitar divisao por 0
hd=sin(wc*m)./(pi*m);