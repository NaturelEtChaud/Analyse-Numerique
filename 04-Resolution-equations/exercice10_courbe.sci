function y=dg1(x)
    y=-(cos(x)+x.*sin(x))./(x.^2)
endfunction

function y=dg2(x)
    y=-2.*x./(sqrt(1-x.^4))
endfunction

function y=dg3(x)
    y=-sin(x)./(2*sqrt(cos(x)))
endfunction

function courbe(fonc,a,b)
    clf
    x=linspace(a,b,200)
    plot(x,fonc(x),"b")
endfunction
