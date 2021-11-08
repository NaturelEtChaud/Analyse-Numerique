E(1)=0.1
n=1
while(E(n)>%eps)
    n=n+1
    E(n)=(0.1^n)/(factorial(n))
end
disp(n,E)
