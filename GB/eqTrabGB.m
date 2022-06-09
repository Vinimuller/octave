#Código para questão 2, trabalho 3 GB

clear

K = 0.02;
S = 0.1;
L = 10; # comprimento do intervalo
tf= 1; # tempo de observacao
dx = 10.^-2;

% Condição inicial (Obs.: NÃO esqueça @(x) )
f = @(x) 1;
 
% Condições de contorno
le = 1; % T(x=0,t)
ld = 0; % T(x=L,t)
 
% -- Calculo da EDP --
nx = round(L/dx); 
nx = nx + 1; 
dt = (S.*dx.^2)./(2.*K); 
nt = round(tf/dt); 
nt=nt+1;

% -- difinindo condiçoes iniciais
for i = 1:nx 
  x(i) = (i-1)*dx; 
  y(i,1) = f(x(i)); 
end 
 
 % -- difinindo condiçoes de contorno
for k = 1:nt 
 y(1,k) = le; 
 y(nx,k) = ld; 
end 
 
t(1) = 0; 
for k = 1:nt-1 
 t(k+1) = t(k) + dt; 
 for i = 2:nx-1 
 y(i,k+1) = y(i,k) + K.*dt./(S.*dx.^2) .* ( y(i+1,k) + y(i-1,k) - 2.*y(i,k));    
 end 
end
T=y(:,nt);