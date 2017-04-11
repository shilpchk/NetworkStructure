
set term epslatex solid;
set outp 'exponent.eps';
set xrange[1:6]
unset key
set ylabel 'Exponent'
set xlabel 'Standard Deviation ($\\sigma$)'

plot './newexp' u 1:2 w p pt 7  lc "black"

set outp;
set term x11;

