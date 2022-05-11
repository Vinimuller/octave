clear all

a = input("Digite o limite inferior ");
b = input("Digite o limite superior ");
dx = input("Digite o valor de passo dx ");
f = input("Digite a funcao: ");

k = 0;
x = a:dx:b;

for i = a:dx:b
  k++;
  x(k) = i; #dominio
  y(k) = f(i); #funcao
  
  dx1(k) = (f(i + dx) - f(i)) ./ dx; #Primeira derivada
  dx2(k) = (f(i + 2.*dx) - 2.*f(i + dx) + f(i))./(dx^2); #segunda derivada
end
