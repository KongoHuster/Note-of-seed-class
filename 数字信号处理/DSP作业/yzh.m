clear;%读取声音信号
[xn, fs] = audioread( 'SunshineSquare.wav') ;
n = 0:length (xn)-1;
f= n*fs/ length(xn) ;
XK = fft(xn) ;
figure (4) ;
subplot(2,2, 1) ;
plot (xn) ;
title('原始信号时域图') ;
ylabel ('yn') ;
subplot(2,2,2) ;
plot(f, abs(XK) ) ;
title('原始信号频域图') ;
xlabel('f/Hz') ;
ylabel ('XK') ;
%4次滤波
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
title( '滤波后信号时域图') ;
ylabel ('yn') ;
subplot(2,2, 4) ;
plot(f1,abs (YK)) ;title( '滤波后信号频域图') ;
xlabel('f/Hz');
ylabel ('YK') ;
audiowrite ('SunshineSquare_New.wav', yn, fs) ;

