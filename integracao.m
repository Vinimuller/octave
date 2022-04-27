clear all
a = 93; #limite A
b = 40; #limite B
n = 10.^3; #numero de divisoes
f = @(x) 97000.*x./(-5.*x.^2 - 570000); #Funcao para integrar

dx = (b-a)./n;
x = a;

integral = 0;
for i = 1:n
   integral += f(x) * dx;
   x += dx;
endfor

integral

