function [b] = createB(L,n,w,d)
  h=L/n;
  E=1.3*10^10;
  I=w*d^3/12;
  
  g=-9.81;
  fx=-480*w*d*g;
  
  b(1:n) = (h^4/(E*I))*fx;
  
endfunction