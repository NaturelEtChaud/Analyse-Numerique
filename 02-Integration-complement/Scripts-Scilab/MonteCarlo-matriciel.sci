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

function M=maximum(f,a,b)
    x=linspace(a,b,1000)
    y=f(x)
    M=max(y)
endfunction

function [MC,temps]=MonteCarlo(f,a,b,N)
    //N est le nombre de lancers
    //n est le nombre de lancers acceptés
    tic() //démarre le chronomètre
    n=0
    Max=maximum(f,a,b)
    for k=1:N
        x=a+(b-a)*rand()
        y=Max*rand()
        if y<=f(x) then
            n=n+1
            X(n)=x
            Y(n)=y
        end               
    end
    plot(X,Y,".")
    MC=n/N*(b-a)*Max
    temps=toc() //toppe le chronomètre et affiche le temps d'execution en seconde(s)
endfunction
