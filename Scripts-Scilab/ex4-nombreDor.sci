function y=nombreDor(n)
    clf //pour effacer le graphique précédent
    x=0:n //création d'une matrice ligne pour les abscisses
    x=x' //on transpose la matrice ligne pour obtenir une matrice colonne
    O=eye(n+1) //création d'une matrice ligne pour recevoir les résultats intermédiaires
    O(1)=1 //initialisation
    //attention, il y a un décalage car on ne va pas de L_0 à L_n, mais de L_1 à L_n+1
    for i=2:n+1
        O(i)=1+1/O(i-1)
    end
    plot(x,O,"ro-")
    y=O(n)
endfunction
