function F=f1(y,z,t)
    F=z;
endfunction

function F=f2(y,z,t)
    F=-sin(y);
endfunction

function Euler(f1,f2,y0,z0,tmax,n)
    //initialisation
    h=tmax/n;
    t(1)=0;
    y(1)=y0;
    z(1)=z0;
    for i=2:n+1
        y(i)=y(i-1)+h*f1(y(i-1),z(i-1),t(i-1));
        z(i)=z(i-1)+h*f2(y(i-1),z(i-1),t(i-1));
        t(i)=t(i-1)+h;
    end
    clf
    plot(t,y,"+")
endfunction
