clear

C = input('Difusividade térmica:'); %Definir
L = input('Comprimento da onda:'); %Definir
tf= input('Tempo de observação:'); % Definir
dx = input('delta x:'); % Passo de x 

% Condição inicial (Obs.: NÃO esqueça @(x) )
f = input('condição inicial com @(x):');
 
% Condições de contorno
le = input('Contorno x=0:'); % T(x=0,t)
ld = input('Contorno x=L:'); % T(x=L,t)
 
% -- Calculo da EDP --
nx = round(L/dx); 
nx = nx + 1; 
dt = dx./C;
nt = round(tf/dt); 
nt=nt+1;

% -- difinindo condiçoes iniciais
for i = 1:nx 
x(i) = (i-1)*dx; 
y(i,1) = f(x(i));

y(i,0) = y(i,1);
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
 y(i,k+1)=2.*y(i,k) - y(i,k-1) + ((C*dt./dx).^2) .* (y(i+1,k) + y(i-1,k) - 2*y(i,k));    
 end 
end
T=y(:,nt);