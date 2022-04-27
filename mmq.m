clear all;
# Vetor X
x = [0.1,0.5,0.8,1.1,1.35,1.7];
m = length(x);
# Vetor f(x)
f = [0.19, 0.75, 0.96, 0.99, 0.87, 0.51];
# Matriz de funcoes
g = [ones(1,m); x; x.^2];
n = length(g(:,1));

for i=1:n
    for j=1:n
        A(i,j) = 0;
        for k=1:m
            A(i,j) += g(i,k).*g(j,k);
        end
    end
    B(i,1) = 0;
    for k=1:m
        B(i,1) += f(k).*g(i,k);
    end
end

disp("Matriz A:")
disp(A)
disp("matriz B:")
disp(B)

#Codigo de solucao de sistema linear
C = [A,B];
[l,c] = size(C);

disp("Matriz de entrada:")
disp(C)

for k = 1:(l-1)
    for i = (k+1):l
        coef = C(i,k)/C(k,k);
        for j = k:c
            C(i,j) = coef*C(k,j) - C(i,j);
        end
    end
end

disp("Matriz triangular:")
disp(C)

alpha = zeros(l,1);
for k = l:-1:1
    s = 0;
    for j = l:-1:1
        s += C(k,j)*alpha(j);
    end
    alpha(k) = (C(k,c) - s)/C(k,k);
end
disp("Vetor solucao: ")
disp(alpha)

