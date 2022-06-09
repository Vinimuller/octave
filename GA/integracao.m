clear all

a = 0; #limite inferior
b = 4; #limite superior
n = 10.^3; #numero de divisoes

#Funcao para integrar
M = 5.*10.^-2;
R = 8.31;
T = 50;

f1 = @(v) 4.*pi.*( (M./2.*pi.*R.*T).^(3/2) ).*(v.^2).*e.^(-(M.*(v.^2)./2.*R.*T));
f2 = @(v) v.*f1(v);
f = @(r) r.*(3.*((1 - r./r0).^(1./7)));

#integracao
dx = (b-a)./n;
x = a;
integral = 0;
for i = 1:n
   integral += f(x) * dx;
   x += dx;
endfor

integral          # resultado da integral é 19.593

