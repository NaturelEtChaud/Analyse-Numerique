format(25)

function y=f1(x)
    y=x.^3+x-1
endfunction

function y=f2(x)
    y=x.^2-cos(x)
endfunction

function y=f3(x)
    y=x.^3-2*x+2
endfunction

function y=f4(x)
    y=x.^2-(11/6)*x-(7/6)
endfunction

function y=f5(x)
    y=(x.^2+1).^-1
endfunction


function R=newton(fonc,nbpts,a,b)
    x=linspace(a,b,200) //pour le tracer
    clf
    plot(x,fonc(x),"r")
    x_0=a;
    for i=1:nbpts
        x_0=x_0-fonc(x_0)/numderivative(fonc,x_0)
        plot(x_0,fonc(x_0),"+")
    end
R=x_0
endfunction
