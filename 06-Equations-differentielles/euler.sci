format(20)

function F=fexemple4(x,t)
    F=-x;
endfunction

function F=fexercice1(x,t)
    F=-5*x;
endfunction

function F=f3(x,t)
    F=-x+2*sin(t);
endfunction

function solution=Euler(f,y0,tmax,n)
    //initialisation
    h=tmax/n;
    t(1)=0;
    y(1)=y0;
    for i=2:n+1
        y(i)=y(i-1)+h*f(y(i-1),t(i-1));
        t(i)=t(i-1)+h;
    end
    //solution exacte en bleu
    plot(linspace(0,10,100),-cos(linspace(0,10,100))+sin(linspace(0,10,100)),"b")
    //approximation d'euler
    plot(t,y,"-r+")
    solution=y(n+1)
endfunction
