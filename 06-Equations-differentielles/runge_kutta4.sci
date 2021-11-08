function F=f(x,t)
    F=-x+2*sin(t);
endfunction

function [Y]=RungeKutta4(f,y0,tmax,n)
    //initialisation
    h=tmax/n;
    t(1)=0;
    y(1)=y0;
    for i=1:n
        //points intermédiaires
        ti(i,1)=t(i);
        yi(i,1)=y(i);
        pi(i,1)=f(yi(i,1),ti(i,1));
        ti(i,2)=t(i)+0.5*h;
        yi(i,2)=y(i)+0.5*h*pi(i,1);
        pi(i,2)=f(yi(i,2),ti(i,2));
        ti(i,3)=ti(i,2);
        yi(i,3)=y(i)+0.5*h*pi(i,2);
        pi(i,3)=f(yi(i,3),ti(i,3));
        ti(i,4)=t(i)+h;
        yi(i,4)=y(i)+h*pi(i,3);
        pi(i,4)=f(yi(i,4),ti(i,4));
        //point RK
        y(i+1)=y(i)+h/6*(pi(i,1)+2*pi(i,2)+2*pi(i,3)+pi(i,4))
        t(i+1)=t(i)+h;
    end
    clf;
    //solution exacte en bleu
    x=linspace(0,10,100)
    plot(x,-cos(x)+sin(x),"b")
    //plot(x,exp(-x),"b")
    //plot(x,(2*x.^2-2*x+1-exp(-2*x))./4,"b")
    //aproximation Runge-Kutta en rouge
    plot(t,y,"r")
    //les points intermédiaires en vert
    plot(ti,yi,"g+")
    Y=y
endfunction
