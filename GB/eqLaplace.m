clear
 
% -- Parâmetros (DEFINIR)--
lx = input('comprimento x:'); % comp. ao longo eixo x
ly = input('comprimento y:'); % comp. ao longo eixo y
C = input('constante C:');
 
% Condições de Contorno
x0 = input('contorno T(0,y):');     
xLx = input('contorno T(lx,y):');  
y0 = input('contorno T(x,0):');  
yLy = input('contorno T(x,ly):');  
 
 % -- Calculo da EDP --
T(1:ly,1:lx)=0;
 
for i = 1:ly
    T(i,1)=x0;
    T(i,lx)=xLx;
end
 
for j = 1:lx
    T(1,j)=y0;
    T(ly,j)=yLy;
end
 
for k=1:lx*ly
for i = 2:ly-1
    for j = 2:lx-1
                      
        if (k==1) 
            T0=T;
        end 
        T(i,j)=(T(i+1,j)+T(i-1,j)+T(i,j+1)+T(i,j-1)-C)/4;
        
    end 
end 
end 
T0=T0'; 
T=T'; 
% -- Saída --
% T temperatura  estacionária no estado de equilíbrio
% T0 temperatura no estado inicial