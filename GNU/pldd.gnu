
set term epslatex color solid;
set outp 'sgeneraldd1p5.eps';
set log
unset ytics
set xrange[6:500]
set xlabel "Connectivity, $k$"
set ylabel "Probability $p(k)$"

#plot 'Data/1p0/X3p01p0k7.data' u ($2)/1000 w p pt 13 t '$p=1.0$', 'Data/0p7/X3p00p7k7.data' u ($1)/100 w p pt 11 t '$p=0.7$', 'Data/0p4/X3p00p4k7.data' u ($1)/10 w p pt 9 t '$p=0.4$', 'Data/0p1/X3p00p1k7.data' w p pt 5 t '$p=0.1$', 'Data/0p0/X3p00p0k7.data' u ($1)*10 w p pt 7 lt 7 t '$p=0.0$'

#plot 'Data/1p0/X3p01p0k7.data' u ($2)/1000 w l t '$p=1.0$', 'Data/0p7/X3p00p7k7.data' u ($1)/100 w l t '$p=0.7$', 'Data/0p4/X3p00p4k7.data' u ($1)/10 w l t '$p=0.4$', 'Data/0p1/X3p00p1k7.data' w l t '$p=0.1$', 'Data/0p0/X3p00p0k7.data' u ($1)*10 w l t '$p=0.0$'

plot 'Data/1p0/X1p51p0k7.data' u ($1)/1000 w p pt 13 t '$p=1.0$', 'Data/0p7/X1p50p7k7.data' u ($1)/100 w p pt 11 t '$p=0.7$', 'Data/0p4/X1p50p4k7.data' u ($1)/10 w p pt 9 t '$p=0.4$', 'Data/0p1/X1p50p1k7.data' w p pt 5 t '$p=0.1$', 'Data/0p0/X1p50p0k7.data' u ($1)*10 w p pt 7 lt 7 t '$p=0.0$'

#plot 'Data/1p0/X1p51p0k7.data' u ($1)/1000 w l t '$p=1.0$', 'Data/0p7/X1p50p7k7.data' u ($1)/100 w l t '$p=0.7$', 'Data/0p4/X1p50p4k7.data' u ($1)/10 w l t '$p=0.4$', 'Data/0p1/X1p50p1k7.data' w l t '$p=0.1$', 'Data/0p0/X1p50p0k7.data' u ($1)*10 w l t '$p=0.0$'

#plot 'Data/1p0/X2p01p0k7.data' u ($1)/1000 w p pt 13 t '$p=1.0$', 'Data/0p7/X2p00p7k7.data' u ($1)/100 w p pt 11 t '$p=0.7$', 'Data/0p4/X2p00p4k7.data' u ($1)/10 w p pt 9 t '$p=0.4$', 'Data/0p1/X2p00p1k7.data' w p pt 5 t '$p=0.1$', 'Data/0p0/X2p00p0k7.data' u ($1)*10 w p pt 7 lt 7 t '$p=0.0$'

set outp;
set term x11;
