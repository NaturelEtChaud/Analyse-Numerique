function [L,U]=LU(A)
    c=size(A); //donne la taille sous la forme d'une matrice (ligne,colonne)
    n=c(1)
    Temp=[A,eye(n,n)] //eye(n,n) donne une matrice identité de taille nxn
    for k=1:n
        for ligne= k+1:n
            Temp(ligne,:)=Temp(ligne,:)-Temp(ligne,k)/Temp(k,k)*Temp(k,:)
        end
    end
U=Temp(1:n,1:n)
L=inv(Temp(1:n,n+1:2*n))
endfunction
