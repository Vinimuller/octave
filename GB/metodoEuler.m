#Metodo de Euler
clear all;
y0 = input("Digite a condicao inicial: ");
x0 = input("Digite o inicio do dominio: ");
xf = input("Digite o final do dominio: ");
dx = input("Digite o passo: ");

f = input("Digite a funcao @(x): ");

n = fix((xf-x0)./dx);

x(1) = x0;
y(1) = y0;

for i = 1:n
  x(i + 1) = x(i) + dx;
  y(i + 1) = y(i) + dx.*f(x(i),y(i));
end