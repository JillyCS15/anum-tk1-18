function [y] = exactVal(L,n,w,d)
  x = linspace(L/n,L,n)
  
  E=1.3*10^10;
  I=w*d^3/12;
  
  g=-9.81;
  f=-480*w*d*g;
  
  for i=1:n
    y(i) = (f/(24*E*I))*(x(i)^2)*((x(i)^2)-(4*L*x(i))+(6*L^2));
  endfor
endfunction