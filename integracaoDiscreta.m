# Vetor X
x = [-3,-1,0,7,11];
n = length(x);
# Vetor f(x)
f = [1,3,7,-1,4];

integral = 0;
for i = 1:n-1
  integral += f(i).*(x(i + 1) - x(i));
endfor

integral