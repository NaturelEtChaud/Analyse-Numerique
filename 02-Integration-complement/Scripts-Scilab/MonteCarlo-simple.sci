format(25)

function y=f(x)
    y=x.*(1-x).*(sin(200.*x.*(1-x))).^2
endfunction

function courbe(f,a,b)
    x=linspace(a,b,1000)
    y=f(x)
    clf
    plot(x,y,"r")
endfunction

function [R,E]=rect(f,a,b,n)
//R pour méthode des rectangles
//E pour l'erreur commise    
    pas=(b-a)/n
    a_k=0
    approx_rect=0
    for k=0:1:n-1
        approx_rect = approx_rect+f(a_k)
        a_k=a_k+pas
    end
    R=approx_rect*(b-a)/n
    E=abs(R-integrate("f(x)","x",0,1))
endfunction

function M=maximum(f,a,b)
    x=linspace(a,b,1000)
    y=f(x)
    M=max(y)
endfunction

function MC=MonteCarlo(f,a,b,N)
    //N est le nombre de lancers
    //n est le nombre de lancers acceptés
    n=0
    Max=maximum(f,a,b)
    for k=1:N
        x=a+(b-a)*rand()
        y=Max*rand()
        if y<=f(x) then
            n=n+1
            plot(x,y,".")
        end               
    end
    MC=n/N*(b-a)*Max
endfunction

function MC2=MonteCarlo2(f,a,b,N)
    //N est le nombre de lancers
    Somme=0
    for k=1:N
        x=a+(b-a)*rand()
        Somme = Somme + f(x)
        plot(x,f(x),".")               
    end
    MC2=Somme*(b-a)/N
endfunction
