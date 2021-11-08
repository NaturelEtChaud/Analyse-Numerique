function y=Heron1(a,n)
    L=1
    for i=1:n
        L=0.5*(L+a/L)
    end
    y=L
endfunction
