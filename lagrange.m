# Interpolação Polinomial
clear all;
# Vetor X
x = [1,2,3,4,5];
n = length(x);
# Vetor f(x)
f = [1,4,9,7,-2];
xint = 3.5; # ponto onde deve ocorrer a interpolacao

for i = 1:n
  L(i) = 1;
  for j = 1:n
    if i != j 
      L(i) = L(i).*(xint - x(j))./(x(i) - x(j));
    endif
  endfor
endfor

# printa valores de saída
x
f
xint
yfinal = sum(f.*L)