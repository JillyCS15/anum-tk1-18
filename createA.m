function [A] = createA(n)
  A = zeros(n);
  A = sparse(A);
  
  A(1, 1:4) = [16, -9, 8/3, -(1/4)];
  A(2, 1:4) = [-4, 6, -4, 1];
  A(n-1, n-3:n) = [16/17, -(60/17), 72/17, -(28/17)];
  A(n, n-3:n) = [-(12/17), 96/17, -(156/17), 72/17];
  
  % iterasi baris 3 sampai n-2
  for i = 3:n-2
    A(i, i-2:i+2) = [1, -4, 6, -4, 1];
  endfor
  