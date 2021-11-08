function y=taylor(x)
    y=1+x+x^2/2+x^3/6
endfunction

function graphes(a,b)
    clf //pour effacer le graphique précédent
    x=a:0.01:b //création d'une matrice ligne pour les abscisses
    x=x' //on transpose la matrice ligne pour obtenir une matrice colonne
    yvrai=exp(x)
    a=gca() //get the current axes
    a.x_location="origin";
    a.y_location="origin";
    plot(x,yvrai,"b",x,taylor,"r")
    xtitle("en bleu la fonction exponentielle, en rouge son polynôme de Taylor")
endfunction
