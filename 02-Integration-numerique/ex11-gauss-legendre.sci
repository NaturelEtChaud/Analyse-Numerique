function y=f1(x)
    y=x^4
endfunction

function y=f2(x)
    y=x^10
endfunction

function [calcul,erreur]=gaussLegendre3(f)
    w_0=5/18
    w_1=4/9
    w_2=5/18
    a_0=-sqrt(3/5)
    a_1=0
    a_2=sqrt(3/5)
    calcul=2*(w_0*f(a_0)+w_1*f(a_1)+w_2*f(a_2))
    erreur=abs(calcul-integrate("f(x)","x",-1,1))
endfunction

