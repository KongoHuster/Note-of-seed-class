clear;%��ȡ�����ź�
[xn, fs] = audioread( 'SunshineSquare.wav') ;
n = 0:length (xn)-1;
f= n*fs/ length(xn) ;
XK = fft(xn) ;
figure (4) ;
subplot(2,2, 1) ;
plot (xn) ;
title('ԭʼ�ź�ʱ��ͼ') ;
ylabel ('yn') ;
subplot(2,2,2) ;
plot(f, abs(XK) ) ;
title('ԭʼ�ź�Ƶ��ͼ') ;
xlabel('f/Hz') ;
ylabel ('XK') ;
%4���˲�
yn = band(xn, 0,fs) ;
yn = band (yn,1575,fs) ;
yn = band (yn,3150,fs) ;
yn = band(yn,4725,fs) ;
%yn (85440:85455) = zeros(16,1) ;
%yn (118500: length(yn) )=zeros(length(yn) -118500+1, 1) ;
n1 = 0:length(yn)-1;
f1 = n1*fs/ length(yn) ;
YK = fft(yn);
subplot (2,2, 3) ;
plot (yn) ;
title( '�˲����ź�ʱ��ͼ') ;
ylabel ('yn') ;
subplot(2,2, 4) ;
plot(f1,abs (YK)) ;title( '�˲����ź�Ƶ��ͼ') ;
xlabel('f/Hz');
ylabel ('YK') ;
audiowrite ('SunshineSquare_New.wav', yn, fs) ;

