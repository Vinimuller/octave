clear all

x = input("Insira o vetor x");
f = input("Insira o vetor f(x)");

n = length(x);

#Primeira derivada

#Primeira posicao utiliza diferença progressiva
dx1(1) = (f(2) - f(1))./(x(2) - x(1));

#Posicoes intermediárias utilizam diferença central
for i=2:n-1
  dx1(i) = (f(i+1) - f(i-1))./(x(i+1) - x(i-1));
end

#Ultima posicao utiliza diferença regressiva
dx1(n) = (f(n) - f(n-1))./(x(n) - x(n-1));

#Segunda derivada

#Primeira posicao utiliza diferença progressiva
dx2(1) = (f(3) - 2.*f(2) + f(1)) ./ ((x(2) - x(1)).*(x(3) - x(2)));

#Posicoes intermediárias utilizam diferença central
for i=2:n-1
  dx2(i) = (f(i+1) - 2.*f(i) + f(i-1)) ./ ( (x(i) - x(i-1)) .* (x(i+1) - x(i)) );
end

#Ultima posicao utiliza diferença regressiva
dx2(n) = (f(n) - 2.*f(n-1) + f(n-2)) ./ ((x(n) - x(n-1)).*(x(n-1) - x(n-2)));

