function y = yExact(x)
  E=1.3*10^10;
  I=0.3*0.03^3/12;
  f=-480*0.3*0.03*-9.81;
  
  y = (f/(24*E*I))*(x^2)*((x^2)-(4*2*x)+(6*2^2));
endfunction