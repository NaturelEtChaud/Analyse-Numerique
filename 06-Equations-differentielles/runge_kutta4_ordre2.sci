function F=f1(y,z,t)
    F=z;
endfunction

function F=f2(y,z,t)
    F=-sin(y);
endfunction

function Y=RungeKutta4(f1,f2,y0,z0,tmax,n)
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
        pyi(i,1)=f1(yi(i,1),zi(i,1),ti(i,1));
        pzi(i,1)=f2(yi(i,1),zi(i,1),ti(i,1));
        ti(i,2)=t(i)+0.5*h;
        yi(i,2)=y(i)+0.5*h*pyi(i,1);
        zi(i,2)=z(i)+0.5*h*pzi(i,1);
        pyi(i,2)=f1(yi(i,2),zi(i,2),ti(i,2));
        pzi(i,2)=f2(yi(i,2),zi(i,2),ti(i,2));
        ti(i,3)=ti(i,2);
        yi(i,3)=y(i)+0.5*h*pyi(i,2);
        zi(i,3)=y(i)+0.5*h*pzi(i,2);
        pyi(i,3)=f1(yi(i,3),zi(i,3),ti(i,3));
        pzi(i,3)=f2(yi(i,3),zi(i,3),ti(i,3));
        ti(i,4)=t(i)+h;
        yi(i,4)=y(i)+h*pyi(i,3);
        zi(i,4)=y(i)+h*pzi(i,3);
        pyi(i,4)=f1(yi(i,4),zi(i,4),ti(i,4));
        pzi(i,4)=f2(yi(i,4),zi(i,4),ti(i,4));
        //point RK
        y(i+1)=y(i)+h/6*(pyi(i,1)+2*pyi(i,2)+2*pyi(i,3)+pyi(i,4));
        z(i+1)=z(i)+h/6*(pzi(i,1)+2*pzi(i,2)+2*pzi(i,3)+pzi(i,4));
        t(i+1)=t(i)+h;
    end
    clf;
    plot(t,y,"r")
    plot(t,z,"g")
    Y=z
endfunction
