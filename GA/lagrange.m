# Interpolação Polinomial
clear all;
# Vetor X
x = [1,2,3,4,5];
n = length(x);
# Vetor f(x)
f = [3,8,15,12,10];
xint = 8; # ponto onde deve ocorrer a interpolacao

a = 1;
b = 8;
dx = 0.1;
n = (b-a)/dx;
for k = 1:n
  xint = a + k.*dx;
  for i = 1:n
    L(i) = 1;
    for j = 1:n
      if i != j 
        L(i) = L(i).*(xint - x(j))./(x(i) - x(j));
      endif
    endfor
  endfor

  # printa valores de saída
  x;
  f;
  xint;
  x(k) = xint;
  yfinal(k) = sum(f.*L);
 end