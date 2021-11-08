function F=f1(y,z,t)
    F=z;
endfunction

function F=f2(y,z,t)
    F=-sin(y);
endfunction

function Y=RungeKutta2(f1,f2,y0,z0,tmax,n)
    //initialisation
    h=tmax/n;
    t(1)=0;
    y(1)=y0;
    z(1)=z0;
    for i=1:n
        //points intermédiaires
        ti(i,1)=t(i);
        yi(i,1)=y(i);
        zi(i,1)=z(i);
        ti(i,2)=t(i)+h;
        yi(i,2)=y(i)+h*f1(y(i),z(i),t(i));
        zi(i,2)=z(i)+h*f2(y(i),z(i),t(i));
        //point RK
        y(i+1)=y(i)+h/2*(f1(yi(i,1),zi(i,1),ti(i,1))+f1(yi(i,2),zi(i,2),ti(i,2)));
        z(i+1)=z(i)+h/2*(f2(yi(i,1),zi(i,1),ti(i,1))+f2(yi(i,2),zi(i,2),ti(i,2)));
        t(i+1)=t(i)+h;
    end
    clf;
    plot(t,y,"r")
    //plot(t,z,"g")
    Y=y
endfunction
