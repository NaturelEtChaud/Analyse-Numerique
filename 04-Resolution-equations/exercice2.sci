format(25)

function y=f1(x)
    y=x.^3+x-1
endfunction

function y=f2(x)
    y=x.^2-cos(x)
endfunction

function y=f3(x)
    y=x.^3-2*x-5
endfunction

function [A,B]=dichotomie(fonc,nbpts,a,b)
    x=linspace(a,b,200) //pour le tracer
    clf
    plot(x,fonc(x),"r")
    gauche=a;
    droite=b;
    for i=0:nbpts
        m=(gauche+droite)/2;
        plot(m,fonc(m),"+")
        if fonc(m)*fonc(gauche)>0 then //même signe
            gauche=m;
        else
            droite=m;
        end
    end
A=gauche
B=droite
endfunction
