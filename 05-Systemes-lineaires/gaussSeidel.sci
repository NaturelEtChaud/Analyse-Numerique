function [u,exact,spectre]=gaussSeidel(A,B,n)
    c=size(A) //dimensions (lignes, colonnes) de la matrice A
    s=c(1) //on récupère le nombre de lignes de la matrice A
    u(:,1)=zeros(s,1)//une colonne uniquement faite de zéros
    u(1,1)=1//le premier coefficient vaut 1
    D=diag(diag(A))//pour obtenir la matrice contenant la diagonale de A
    E=zeros(s,s)//une matrice de zéros
    for i=1:s
        for j=1:i
            E(i,j)=-A(i,j)
        end
    end
    E=E+D //on enlève la diagonale
    F=D-E-A
    L=inv(D-E)*F
    spectre=spec(L)
    C=inv(D-E)*B
    for k=1:n
        u(:,k+1)=L*u(:,k)+C
    end
    u;
    exact=inv(A)*B;
endfunction

function e=erreur(exact,u)
    clf
    c=size(u)
    n=c(2) //on récupère le nombre de colonnes de u
    for k=1:n
        e(k)=norm(exact-u(:,k))
    end
    e=e' //on transforme le vecteur colonne e en un vecteur ligne
    plot(0:n-1,e,'b') //petit décalage en abscisse car on démarre à u_0
endfunction
