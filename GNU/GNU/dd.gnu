
set term epslatex solid;
set output "transitionlog.eps"
set log y
set log x
set xrange[1:20]
set xlabel 'Connectivity, $k$'
set ylabel 'probability $p(k)$'
unset ytics

plot 'Sp1.data'  u 1:($2)*1. t "$\sigma=0.1$" w lp pt 4 lc "black", 'Sp2.data'  u 1:($2)/10. t "$\sigma=0.2$" w lp pt 6 lc "black", 'Sp6.data'  u 1:($2)/100. t "$\sigma=0.6$" w lp pt 8 lc "black", 'S1.data'  u 1:($2)/1000. t "$\sigma=1.0$" w lp pt 10 lc "black",'S1p5.data'  u 1:($2)/10000. t "$\sigma=1.5$" w lp pt 12 lc "black", 'S2.data'  u 1:($2)/100000. t "$\sigma=2.0$"w lp pt 14 lc "black"

unset outp
set terminal x11

