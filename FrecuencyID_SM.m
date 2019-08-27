%% Borrar todo
clc
clear all


Fs=8000;


%% Cargar Archivo
[audio,Fs]=audioread('SM4.wav');
%% Tamano del audio
L=length(audio);
%t=0:L-1;
t=(0:L-1)/Fs;

% % NFFT = 2^nextpow2(L);
% % TFaudio = fft(audio,NFFT)/L;
% % f = (Fs/2)*linspace(0,1,NFFT/2+1);
audioF1=F400(audio)';
% TFaudioF1 = fft(audioF1,NFFT)/L;

audioF2=F800(audio)';
% TFaudioF2 = fft(audioF2,NFFT)/L;

audioF3=F1400(audio)';
% TFaudioF3 = fft(audioF3,NFFT)/L;

audioF4=F3800(audio)';
% TFaudioF4 = fft(audioF4,NFFT)/L;

% % 
% % figure
% % subplot(5,1,1)
% % plot(t,audio,'b')
% % title('Senal original')
% % 
% % subplot(5,1,2)
% % plot(t,audioF1,'r')
% % title('Espectro Senal original')
% % 
% % subplot(5,1,3)
% % plot(t,audioF2,'k')
% % title('Espectro Senal original')
% % 
% % subplot(5,1,4)
% % plot(t,audioF3,'g')
% % title('Espectro Senal original')
% % 
% % subplot(5,1,5)
% % plot(t,audioF4,'b')
% % title('Espectro Senal original')
% % 
% % figure
% % plot(t,audioF1,'r',t,audioF2,'k',t,audioF3,'g',t,audioF4,'b')
% % title('Mensaje Secreto 1')

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

% u=0.313;
r=0;
z=round(length(audio)/2500);
i=1;


RF1=[];
RF2=[];
RF3=[];
RF4=[];

fp=round(length(audioF1)/z)-1;
f=fp;
for j=1:z  
 n= i:f;
 r= sum(abs(audioF1(n,:)))
 RF1=[RF1 r];
 RFA=RF1>=260;
%  Rp= R;
 i=f+1;
 f=f+fp;   
end
 
i=1;
fp=round(length(audioF2)/z)-1;
f=fp;
for j=1:z  
 n= i:f;
 r= sum(abs(audioF2(n,:)))
 RF2=[RF2 r];
 RFB=RF2>=500;
%  Rp= R;
 i=f+1;
 f=f+fp;   
end

i=1;
fp=round(length(audioF3)/z)-1;
f=fp;
for j=1:z  
 n= i:f;
 r= sum(abs(audioF3(n,:)))
 RF3=[RF3 r];
 RFC=RF3>=500;
%  Rp= R;
 i=f+1;
 f=f+fp;   
end

i=1;
fp=round(length(audioF4)/z)-1;
f=fp;
for j=1:z  
 n= i:f;
 r= sum(abs(audioF4(n,:)))
 RF4=[RF4 r];
 RFD=RF4>=500;
%  Rp= R;
 i=f+1;
 f=f+fp;   
end
RD=RFA+RFB+RFC+RFD;
RFA=1*RFA;
RFB=2*RFB;
RFC=3*RFC;
RFD=4*RFD;
RD=RFA+RFB+RFC+RFD;
interP(RD)

% figure;
% stem(RD)