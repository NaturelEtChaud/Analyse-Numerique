format(20)

function F=fexemple4(x,t)
    F=-x;
endfunction

function F=fexercice5(x,t)
    F=-2*x+t^2;
endfunction

function F=f3(x,t)
    F=-x+2*sin(t);
endfunction

function F=f2(x,t)
    F=-5*x+t*exp(-5*t)
endfunction

function Y=RungeKutta2(f,y0,tmax,n)
    //initialisation
    h=tmax/n;
    t(1)=0;
    y(1)=y0;
    for i=1:n
        //points intermédiaires
        ti(i,1)=t(i);
        yi(i,1)=y(i);
        ti(i,2)=t(i)+h;
        yi(i,2)=y(i)+h*f(y(i),t(i));
        //point RK
        y(i+1)=y(i)+h/2*(f(yi(i,1),ti(i,1))+f(yi(i,2),ti(i,2)))
        t(i+1)=t(i)+h;
    end
    clf;
    //solution exacte en bleu
    x=linspace(0,3,100)
    plot(x,(2*x.^2-2*x+1-exp(-2*x))./4,"b")
    //aproximation Runge-Kutta en rouge
    plot(t,y,"r")
    //les points intermédiaires en vert
    plot(ti,yi,"g+")
    Y=y
endfunction
