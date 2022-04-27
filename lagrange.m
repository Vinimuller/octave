# Interpolação Polinomial
clear all;
# Vetor X
x = [0.99907,0.99852,0.99826,0.99818,0.99828,0.99849,0.99878];
n = length(x);
# Vetor f(x)
f = [20,25,30,35,40,45,50];
xint = 0.99837;

for i = 1:n
  L(i) = 1;
  for j = 1:n
    if i != j 
      L(i) = L(i).*(xint - x(j))./(x(i) - x(j));
    endif
  endfor
endfor

yfinal = sum(f.*L);