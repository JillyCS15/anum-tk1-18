function [L, U] = bandedLUFac(A, p, q)
  [n,n] = size(A);
  L = eye(n);
  
  % iterasi k untuk kolom 1 sampai n-1
  for k=1:n-1
    
    % mencari nilai minimal dari panjang baris yang perlu dibuat jadi nilai 0
    m = min(q+k,n);
    
    % iterasi i untuk baris k+1 hingga m
    for i = k+1:m
      
      % menghitung panjang minimal pita kiri
      pita_kiri = min(i-1,q);
      
      % menghitung panjang minimal pita kanan
      pita_kanan = min(n-i,p);
      
      % menghitung panjang pita sebagai batas kolom
      panjang_max = min(k+pita_kiri+pita_kanan,n);
      
      % mencari ratio terhadap diagonal utama untuk baris i
      % dan disimpan pada matriks L di posisi yang sesuai
      L(i,k) = A(i,k)/A(k,k);
      
      % update nilai
      A(i,k:panjang_max) = A(i,k:panjang_max) - L(i,k)*A(k,k:panjang_max);
    endfor
  endfor
  U = A;
endfunction