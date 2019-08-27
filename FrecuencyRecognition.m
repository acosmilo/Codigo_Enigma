%% Frecuencia de Muestreo
% Autor: @acosmilo


%% Resolucion
% Se cierra figuras, se limpia variables y consola.

close all
clear all
clc

Fs = 8000; 
Bits = 16; 
Canal = 1; 

% %% Grabacion
% 
% disp('Comienza grabacion REC'); 
% recObj = audiorecorder (Fs, Bits, Canal);
% recordblocking (recObj, 13);
% disp('Finaliza grabacion STOP'); 
% audio=getaudiodata(recObj);
% audiowrite ('SM4.wav', audio , Fs);

%% Cargar Archivo
[sm1,Fs]=audioread('SM1.wav');
L1=length(sm1)
%t=(0:L-1)/Fs;
f1=Fs/L1*(0:L1-1);
TFsm1=abs(fft(sm1)/L1);

[sm2,Fs]=audioread('SM2.wav');
L2=length(sm2)
f2=Fs/L2*(0:L2-1);
TFsm2=abs(fft(sm2)/L2);

[sm3,Fs]=audioread('SM3.wav');
L3=length(sm3)
f3=Fs/L3*(0:L3-1);
TFsm3=abs(fft(sm3)/L3);

[sm4,Fs]=audioread('SM4.wav');
L4=length(sm4)
f4=Fs/L4*(0:L4-1);
TFsm4=abs(fft(sm4)/L4);
figure 

subplot(4,1,1)
plot(f1,TFsm1)
xlim([0 4000])
ylim([0 0.005])
xlabel('[Hz]')
title('Espectro de Frecuencias Mensaje Secreto UNO')


subplot(4,1,2)
plot(f2,TFsm2)
xlim([0 4000])
ylim([0 0.005])
xlabel('[Hz]')
title('Espectro de Frecuencias Mensaje Secreto DOS')


subplot(4,1,3)
plot(f3,TFsm3)
xlim([0 4000])
ylim([0 0.005])
xlabel('[Hz]')
title('Espectro de Frecuencias Mensaje Secreto TRES')


subplot(4,1,4)
plot(f3,TFsm3)
xlim([0 4000])
ylim([0 0.005])
xlabel('[Hz]')
title('Espectro de Frecuencias Mensaje Secreto CUATRO')

