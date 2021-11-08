function y=f1(x)
    y=exp(x)
endfunction

function y=f2(x)
    y=(1+x.^2).^(-1)
endfunction

function y=f3(x)
    for i=1:length(x)
        if x(i)<0 then temp(i)=x(i)
        else temp(i)=x(i)/2
        end 
    end
    y=temp'
endfunction

function y=frunge(x)
    y=(1+25*x.^2).^(-1)
endfunction


function R=lagrange(fonc,nbpts,a,b)
    x=linspace(a,b,200) //pour le tracer
    y=zeros(1,200) //pour le tracer
    xk=linspace(a,b,nbpts)// abscisses des pivots
    for i=1:nbpts //les polynômes de Lagrange
        l(i,1:200)=ones(1,200); //pour obtenir les 200 points du polynômes l(i)
        for k=1:nbpts
            if k<>i then
                l(i,:)=l(i,:).*(x-xk(k))/(xk(i)-xk(k));
            end
        end
        y=y+l(i,:)*fonc(xk(i));
    end
    clf
    plot(xk,fonc(xk),"+")//les pivots
    plot(x,fonc(x),"r")//le polynôme d'interpolation de Lagrange
    plot(x,y,"b")//la fonction interpolée
    R=y
endfunction
