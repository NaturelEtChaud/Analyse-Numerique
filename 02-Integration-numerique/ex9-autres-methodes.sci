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
    for k=0:n-1
        approx_rect = approx_rect+f(a_k)
        a_k=a_k+pas
    end
    R=approx_rect*(b-a)/n
    E=abs(R-log(2))
endfunction

function [T,E]=trap(f,a,b,n)
//T pour méthode des trapèzes
//E pour l'erreur commise    
    pas=(b-a)/n
    a_k=a+pas
    approx_trap=0
    for k=1:n-1
        approx_trap = approx_trap+f(a_k)
        a_k=a_k+pas
    end
    T=(approx_trap+(f(a)+f(b))/2)*(b-a)/n
    E=abs(T-log(2))
endfunction

function [S,E]=simpson(f,a,b,n)
//S pour méthode de Simpson
//E pour l'erreur commise    
    pas=(b-a)/n
    a_k=a+pas
    approx_sim_1=0
    for k=1:n-1
        approx_sim_1 = approx_sim_1+f(a_k)
        a_k=a_k+pas
    end
    approx_sim_2=0
    a_k=a+(b-a)/(2*n)//point intermédiaire
    for k=0:n-1
        approx_sim_2 = approx_sim_2+f(a_k)
        a_k=a_k+pas
    end
    S=(f(a)+f(b)+2*approx_sim_1+4*approx_sim_2)*(b-a)/(6*n)
    E=abs(S-log(2))
endfunction
