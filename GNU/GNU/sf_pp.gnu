set term epslatex solid;
set output "sf5.eps"
set log y
set log x
set xrange[1:1000]
set yrange[1e-7:1]
set xlabel 'Connectivity, $k$'
set ylabel 'probability $p(k)$'

set title 'Standard Deviation = 5.0'
plot 'S5.data'  u 1:($2)/10000000. t "Simulation" w p pt 6 lc "black", './Dump/E5.dat' t "Analytical" w l lt 1 lw 2 lc "black"

unset outp
set terminal x11

