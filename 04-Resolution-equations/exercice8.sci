format(25)

function y=f1(x)
    y=-x.^3+1
endfunction

function y=f2(x)
    y=x.^3+2*x-1
endfunction

function y=f3(x)
    y=(x.^2+1).^-1
endfunction

function R=pt_fixe(fonc,nbpts,a)
    clf
    x_0=a;
    X=a;
    for i=1:nbpts
        x_0=fonc(x_0)
        X=[X,x_0]
    end
    plot(linspace(0,nbpts,nbpts+1),X,"b")
R=x_0
endfunction
