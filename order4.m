function order4(x,H)
  H
  h = 1/2**H;
  y4 = (yExact(x-2*h)-4*yExact(x-h)+6*yExact(x)-4*yExact(x+h)+yExact(x+2*h))/h**4
endfunction