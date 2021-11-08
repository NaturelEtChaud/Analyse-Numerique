function [u,exact,spectre]=jacobi(A,B,n)
    c=size(A) //dimensions (lignes, colonnes) de la matrice A
    s=c(1) //on récupère le nombre de lignes de la matrice A
    u(:,1)=zeros(s,1)//une colonne uniquement faite de zéros
    u(1,1)=1//le premier coefficient vaut 1
    D=diag(diag(A))//pour obtenir la matrice diagonale contenant la diagonale de A
    J=inv(D)*(D-A)
    spectre=spec(J)//le spectre de J permet de savoir si la méthode est convergente
    Bprime=inv(D)*B
    for k=1:n
        u(:,k+1)=J*u(:,k)+Bprime
    end
    u
    exact=inv(A)*B //pour effectuer une comparaison
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
