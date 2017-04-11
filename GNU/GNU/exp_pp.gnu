set term epslatex solid;
set output "expp5.eps"
set log y
set xrange[1:22]
set xlabel 'Connectivity, $k$'
set ylabel 'probability $p(k)$'

set title 'Standard Deviation = 0.1'
plot 'Sp5.data'  u 1:($2)/10000000. t "Simulation" w p pt 6 lc "black", './Dump/Ep5.dat' t "Analytical" w l lt 1 lw 2 lc "black"

unset outp
set terminal x11

