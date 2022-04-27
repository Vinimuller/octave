a=input("Limite inferior");
b=input("Limite superior");
epi=input("Tolerancia");
f = input("funcao");
x = (a + b)./2;
i = 1;

while abs(x - b) > epi
    if(f(a).*f(x) > 0)
        a = x;
    else
        b = x;
    endif
        
    x = (a + b)./2;
    i++;
end
disp(x);
disp(i);