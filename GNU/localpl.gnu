
set term epslatex solid;
set outp 'local.eps';

set log
set yrange [1:2*1e5]
set xrange[5:500]
set xlabel "Connectivity, $k$"
set ylabel "Probability $p(k)$"
plot './X1p5local1per.data' w p pt 7 lc "black" t 'Local Information', 'Data/X1p51a0.data' w l lt 7 t 'Global Information'

set outp;
set term x11;


