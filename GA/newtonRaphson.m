#Algoritmo Newton Raphson
#Primeira derivada da funcao
f1 = @(x) -4.*x.^3 - 6.*x.^2 - 16.*x -5 ;

#Segunda derivada da funcao
f2 = @(x) -4.*3.*x.^2 - 6.*2.*x - 16;

#Tolerancia
tol = 1e-3;             

#Chute inicial
x0 = 0.5;               

x1 = x0;
while(1)
  x  = x1;
  x1 = x - f1(x)./f2(x);
  if( abs(x1 - x) <= tol )
    break;
  endif
endwhile

x1

if(f2(x1) < 0)
  disp("Valor de X1 eh um ponto maximo");
else
    disp("Valor de X1 eh um ponto minimo")
endif
