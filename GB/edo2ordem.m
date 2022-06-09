#EDO 2 ordem

clear all

y0 = input("Insira condicao y0: ");
v0 = input("Insira condicao v0: ");

t0 = input("Insira condicao T0: ");
tf = input("Insira condicao T final: ");

dt = input("Passo de tempo: ");

f = input("Funcao @(t,y,v): ");

nsteps = fix((tf-t0)./dt);

t(1) = t0;
y(1) = y0;
v(1) = v0;
for i = 1:nsteps  
  t(i+1) = t(i) + dt;
  v(i+1) = v(i) + f(t(i),y(i),v(i)).*dt;
  y(i+1) = y(i) + v(i+1)*dt;
end