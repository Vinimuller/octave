f1 = @(x) 2.*cos(x) - x./5;
f2 = @(x) -2.*sin(x) - 1/5;
tol = 1e-3;
x0 = 6.5;

x1 = x0;
x = 0;
while(  abs(x1 - x) >= tol )
  x  = x1;
  x1 = x - f1(x)./f2(x);
endwhile

x1

if(f2(x1) < 0)
  disp("Valor de X1 eh um ponto maximo");
else
    disp("Valor de X1 eh um ponto minimo")
endif
