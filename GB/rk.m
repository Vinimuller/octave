clear
% -- Entrada --

yo=input('condição inicial y0:'); % condição inicial 
xo=input('valor de a:');   %  tempo inicial (definir)
xf=input('valor de b:');  %  tempo final (definir) 
dx=input('valor do passo dx:'); % deltat (definir)

f=input('escreva a função com @(x,y):');  % função - Atenção - NÃO esqueça de @(x,y)
 
% -- Operação --
nstep=fix((xf-xo)./dx); % número de passos 
x(1)=xo;
y(1)=yo;
for i=1:nstep
    x(i+1)=x(i)+dx;   % relogio
    k1 = f(x(i),y(i));
    k2 = f(x(i) + (1./2).*dx, y(i) + (1./2).*k1.*dx);
    k3 = f(x(i) + (1./2).*dx, y(i) + (1./2).*k2.*dx);
    k4 = f(x(i) + dx, y(i) + k3.*dx);
    y(i+1)=y(i) + (1./6).*(k1 + 2.*k2 + 3.*k3 + k4).*dx; 
end