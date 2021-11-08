function y=taylor(x)
    y=1+x+x^2/2+x^3/3
endfunction



function graphes(a,b)
    clf //pour effacer le graphique précédent
    x=a:0.1:b //création d'une matrice ligne pour les abscisses
    //x=x' //on transpose la matrice ligne pour obtenir une matrice colonne
    yvrai=exp(x)
    plot(x,yvrai,"b")
    plot(x,taylor,"r")
endfunction
