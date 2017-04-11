
set term epslatex solid;
set outp 'nonlinearB.eps';
set log
unset ytics
set xrange[.9:400]
set xlabel "Connectivity, $k$"
set ylabel "Probability $p(k)$"

plot 'XB1a2.data' u ($1)/10000000 w p t '$\alpha=1.2$' pt 5 lc "black" ,\
'XB1a1.data' u ($1)/1000000 w p t '$\alpha=1.1$' pt 7 lc "black" ,\
'XB1a0.data'  u ($1)/10000 w p t '$\alpha=1.$' pt 9 lc "black" ,\
'XB0a9.data' u ($1)/100 w p t '$\alpha=0.9$' pt 11 lc "black" ,\
'XB0a8.data' u ($1)  w p t '$\alpha=0.8$' pt 13 lc "black"

set outp;
set term x11;


