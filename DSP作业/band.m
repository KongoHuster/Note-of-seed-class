function [y] = band(xn,f,fs)
    %Éè¼ÆÂË²¨Æ÷
    w = 2*pi*f/ fs;
    A = -2*cos (w) ;
    hn=[1,A,1];
    y = conv (xn,hn);
end