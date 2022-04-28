clear all
# Vetor X
x = [0,0.3, 0.6, 0.8, 1, 1.2, 1.8, 2.4, 3.0];
n = length(x);
# Vetor f(x)
f = [4, 3.9, 3.7, 3.5, 3.3, 2.9, 2.5, 2.0, 1.25];

integral = 0;
for i = 1:n-1
  integral += f(i).*(x(i + 1) - x(i));
endfor

integral