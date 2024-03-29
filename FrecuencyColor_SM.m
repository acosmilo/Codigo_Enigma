%% Borrar todo
close all
clear all


Fs=8000;
% %% Cargar Filtro
% load('F400C2.mat')
% load('F800C2.mat')
% load('F1400C2.mat')
% load('F3800C2.mat')

%% Cargar Archivo
[audio,Fs]=audioread('SM1.wav');


%% Tamano del audio
L=length(audio);
%t=0:L-1;
t=(0:L-1)/Fs;

% NFFT = 2^nextpow2(L);
% TFaudio = fft(audio,NFFT)/L;
% f = (Fs/2)*linspace(0,1,NFFT/2+1);
 
audioF1=F400(audio);
% TFaudioF1 = fft(audioF1,NFFT)/L;

audioF2=F800(audio);
% TFaudioF2 = fft(audioF2,NFFT)/L;

audioF3=F1400(audio);
% TFaudioF3 = fft(audioF3,NFFT)/L;

audioF4=F3800(audio);
% TFaudioF4 = fft(audioF4,NFFT)/L;


figure
subplot(5,1,1)
plot(t,audio,'b')
ylim([-2.4 2.8])
title('Senal original Mensaje Secreto UNO')

subplot(5,1,2)
plot(t,audioF1,'r')
title('Senal filtrada con Filtro PB 400HZ')

subplot(5,1,3)
plot(t,audioF2,'k')
title('Senal filtrada con Filtro PB 800HZ')

subplot(5,1,4)
plot(t,audioF3,'g')
title('Senal filtrada con Filtro PB 1400HZ')

subplot(5,1,5)
plot(t,audioF4,'b')
title('Senal filtrada con Filtro PB 3800HZ')

figure;
plot(audioF4);
title('Senal F43800HZ cheby 1');
figure;
plot(audioF3);
title('Senal F3 1400HZ cheby 1');
figure;
plot(audioF2);
title('Senal F2 800HZ cheby 1');
figure;
plot(audioF1);
title('Senal F1 400HZ cheby 1');
% figure
% plot(t,audioF1,'r',t,audioF2,'k',t,audioF3,'g',t,audioF4,'b')
% title('Mensaje Secreto 1')

% figure 
% subplot(5,1,1)
% plot(f,2*abs(TFaudio(1:NFFT/2+1)),'b')
% title('Espectro senal original')
% 
% subplot(5,1,2)
% plot(f,2*abs(TFaudioF1(1:NFFT/2+1)),'r')
% title('Espectro senal filtrada')
% 
% subplot(5,1,3)
% plot(f,2*abs(TFaudioF2(1:NFFT/2+1)),'r')
% title('Espectro senal filtrada')
% 
% subplot(5,1,4)
% plot(f,2*abs(TFaudioF3(1:NFFT/2+1)),'r')
% title('Espectro senal filtrada')
% 
% subplot(5,1,5)
% plot(f,2*abs(TFaudioF4(1:NFFT/2+1)),'r')
% title('Espectro senal filtrada')

%length(nonzeros(audioF1>=1.151))
