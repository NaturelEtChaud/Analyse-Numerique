format(20)

function y=f(x)
    y=sqrt(1-x^2)
endfunction

function courbe()
    clf
    //1000 subdivisions entre -1 et 1
    x=linspace(-1,1,1000)
    plot(x,f) 
endfunction

a=-0.5
b=0.5

function [R,E]=rect(n)
//R pour méthode des rectangles
//E pour l'erreur commise    
    pas=(b-a)/n
    a_k=a
    approx_rect=0
    for k=0:n-1
        approx_rect = approx_rect+f(a_k)
        a_k=a_k+pas
    end
    R=6*(approx_rect*(b-a)/n-sqrt(3)/4)
    E=abs(R-%pi)
endfunction

function [T,E]=trap(n)
//T pour méthode des trapèzes
//E pour l'erreur commise    
    pas=(b-a)/n
    a_k=a+pas
    approx_trap=0
    for k=1:n-1
        approx_trap = approx_trap+f(a_k)
        a_k=a_k+pas
    end
    T=6*((approx_trap+(f(a)+f(b))/2)*(b-a)/n-sqrt(3)/4)
    E=abs(T-%pi)
endfunction

function [S,E]=simpson(n)
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
    S=6*((f(a)+f(b)+2*approx_sim_1+4*approx_sim_2)*(b-a)/(6*n)-sqrt(3)/4)
    E=abs(S-%pi)
endfunction
