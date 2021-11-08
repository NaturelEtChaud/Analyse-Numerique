format(20))

function y=f(x)
    y=1/(1+x)
endfunction

function [Resultat,Erreur]=rect(f,a,b)
    pas=(b-a)/5
    a_k=a
    approx_rect=0
    for k=0:4
        approx_rect = approx_rect+f(a_k)
        a_k=a_k+pas 
    end
    approx_rect=approx_rect*(b-a)/5
    Resultat=approx_rect
    Erreur=abs(approx_rect-log(2))
endfunction
