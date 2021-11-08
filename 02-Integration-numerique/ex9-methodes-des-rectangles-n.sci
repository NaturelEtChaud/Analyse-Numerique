format(20)

function y=f(x)
    y=1/(1+x)
endfunction

function [R,E]=rect(f,a,b,n)
//R pour méthode des rectangles
//E pour l'erreur commise    
    pas=(b-a)/n
    a_k=a
    approx_rect=0
    for k=0:1:n-1
        approx_rect = approx_rect+g(a_k)
        a_k=a_k+pas
    end
    R=approx_rect*(b-a)/n
    E=abs(R-log(2))
endfunction
