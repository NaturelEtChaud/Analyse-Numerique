function y=Heron3(a,delta)
    clf //pour effacer le graphique précédent
    calc = sqrt(a) //valeur obtenue par scilab
    n=1 //compteur
    L(1)=1 //initialisation
    //attention, il y a un décalage car on ne va pas de L_0 à L_n-1, mais de L_1 à L_n
    while(abs(calc-L(n))>delta)
        n=n+1
        L(n)=0.5*(L(n-1)+a/L(n-1))
    end
    x=0:n-1 //création d'une matrice ligne pour les abscisses
    x=x' //on transpose la matrice ligne pour obtenir une matrice colonne
    plot(x,L,"ro-")
    y=L(n)
endfunction
