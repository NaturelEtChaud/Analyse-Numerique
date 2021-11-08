function x=gauss(A,B)
    c=size(A); //donne la taille sous la forme d'une matrice (ligne,colonne)
    n=c(1) //récupère le nombre de ligne
    Temp=[A,B] //on colle la matrice B à la matrice A
    for k=1:n
        for ligne= k+1:n
            Temp(ligne,:)=Temp(ligne,:)-Temp(ligne,k)/Temp(k,k)*Temp(k,:)
        end
    end
    disp(Temp) //pour voir le système triangulaire supérieur
    Aprime = Temp(1:n,1:n)
    Bprime = Temp(:,n+1)
    for k=n:-1:1
        x(k)=Bprime(k,1)
        for colonne=k+1:n
            x(k)=x(k)-Aprime(k,colonne)*x(colonne)
        end
        x(k)=x(k)/Aprime(k,k)    
    end
    x
endfunction
