function [y] = band(xn,f,fs)
    %����˲���
    w = 2*pi*f/ fs;
    A = -2*cos (w) ;
    hn=[1,A,1];
    y = conv (xn,hn);
end