A = [4,10;10,30];
B = [2.8;7.6];
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

x = zeros(l,1);
for k = l:-1:1
    s = 0;
    for j = l:-1:1
        s += C(k,j)*x(j);
    end
    x(k) = (C(k,c) - s)/C(k,k);
end
disp("Vetor solucao: ")
disp(x)




