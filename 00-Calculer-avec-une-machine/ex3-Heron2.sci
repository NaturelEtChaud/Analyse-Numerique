function y=Heron2(a,n)
    clf //pour effacer le graphique précédent
    x=0:n //création d'une matrice ligne pour les abscisses
    x=x' //on transpose la matrice ligne pour obtenir une matrice colonne
    L=eye(n+1) //création d'une matrice ligne pour recevoir les résultats intermédiaires
    L(1)=1 //initialisation
    //attention, il y a un décalage car on ne va pas de L_0 à L_n, mais de L_1 à L_n+1
    for i=2:n+1
        L(i)=0.5*(L(i-1)+a/L(i-1))
    end
    plot(x,L,"ro-")
    y=L(n)
endfunction
