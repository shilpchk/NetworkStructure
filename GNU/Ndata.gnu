
set term epslatex solid;
set outp 'nonlinearlnfa.eps';
set log
unset ytics
set xrange[.9:400]
set yrange[10e-9:10e7]
set xlabel "Connectivity, $k$"
set ylabel "Probability $p(k)$"

plot 'X1p51a2.data' u ($1)/100000000 w p t '$\alpha=1.2$' pt 5 lc "black" ,\
'X1p51a1.data' u ($1)/1000000 w p t '$\alpha=1.1$' pt 7 lc "black" ,\
'X1p51a0.data'  u ($1)/10000 w p t '$\alpha=1.$' pt 9 lc "black" ,\
'X1p5a9.data' u ($1)/100 w p t '$\alpha=0.9$' pt 11 lc "black" ,\
'X1p5a8.data' w p t '$\alpha=0.8$' pt 13 lc "black"

set outp;
set term x11;


