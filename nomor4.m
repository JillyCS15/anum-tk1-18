function nomor4(x,H)
  h = 1/2**H
  y_fd = (yNomor4(x+h) - yNomor4(x))/h
  y_bd = (yNomor4(x) - yNomor4(x-h))/h
  y_cd = (yNomor4(x+h) - yNomor4(x-h))/2*h
endfunction
  
