n=9

function y = poleg(n,x)
//polynome de Legendre
select n
	case 0 then pp = ones(x);
	case 1 then pp = x
	else
		pavantder = ones(x), pder = x; i=1;
		while i<n
			pp = ((2*n+1)*x.*pder - n*pavantder)/(n+1);
			pavantder = pder; pder = pp;
			i=i+1;
		end
	end
y=pp;
endfunction

x=linspace(-1,1,200)
y=poleg(n,x)
plot(x,y,"r")

