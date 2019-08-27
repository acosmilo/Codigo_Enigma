function [salida] = F3800( y )
fs=8000;
% [y,fs]= audioread('Mensaje1.wav');
t=(0:length(y)-1)/fs;


%filtro analogico chebyshev 1

Wp=[3498 4100]*2*pi;%frecuencia de paso
Ws=[3198 4400]*2*pi;%frecuencia de rechazo
Rp=3;%en dBrizado de banda pasante
Rs=60;%en dBrizado de banda rechazo 
%Rs=20;%en dB

[N,Wn]=cheb1ord(Wp,Ws,Rp,Rs,'s');%si envio un vslor sabe que es un pasabnada o un rechazavanda %orden de un butteword
%  N %orden  
%  Wn=Wn/(2*pi) %para ver la frecuncia de corte
[b,a]=cheby1(N,Rp,Wp,'bandpass','s');%wn y wp es lo mismo segun lo que me dio y debo mandar en radianes 
[H,w]=freqs(b,a);
sys=tf(b,a);

%%aplica filtro 
%lsim(sys,y,t);%salida del sistema entender lo que hace gris entra azul sale 
salida=lsim(sys,y,t);
salida=salida';

end