set term epslatex color solid;
set output "non1a1.eps"

set log y
set log x
set xrange[1:1000]
set yrange[1e-7:1]
set xlabel 'Connectivity, $k$'
set ylabel 'probability $p(k)$'

plot 'X1p51a1.data'  u ($1)/10000000. t "$\\sigma=1.50, \\alpha=1.1$" w p pt 6, 'X1p651a0.data'  u ($1)/10000000. t "$\\sigma=1.65, \\alpha=1.0$" w p pt 4 lc 3

unset outp
set terminal x11

