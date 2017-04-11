
set log x
set log y

plot './S2.data' u 1:($2)/10000000. w p, 'I2.dat' w l lc 2, 'E2.dat' w l lc 2, \
 './S3.data' u 1:($2)/10000000. w p, 'I3.dat' w l lc 2, 'E3.dat' w l lc 2, \
 './S4.data' u 1:($2)/10000000. w p, 'I4.dat' w l lc 2, 'E4.dat' w l lc 2, \
 './S5.data' u 1:($2)/10000000. w p, 'I5.dat' w l lc 2, 'E5.dat' w l lc 2, \ 
 './S6.data' u 1:($2)/10000000. w p, 'I6.dat' w l lc 2, 'E6.dat' w l lc 2, \
 './S7.data' u 1:($2)/10000000. w p, 'I7.dat' w l lc 2, 'E7.dat' w l lc 2, \
 './S8.data' u 1:($2)/10000000. w p, 'I8.dat' w l lc 2, 'E8.dat' w l lc 2, \
 './S9.data' u 1:($2)/10000000. w p, 'I9.dat' w l lc 2, 'E9.dat' w l lc 2, \
 './S10.data' u 1:($2)/10000000. w p, 'I10.dat' w l lc 2, 'E10.dat' w l lc 2

plot './S2.data' u 1:($2)/10000000. w p, 'I2.dat' w l lc 3
plot './S3.data' u 1:($2)/10000000. w p, 'I3.dat' w l lc 2
plot './S4.data' u 1:($2)/10000000. w p, 'I4.dat' w l lc 2
plot './S5.data' u 1:($2)/10000000. w p, 'I5.dat' w l lc 2
plot './S6.data' u 1:($2)/10000000. w p, 'I6.dat' w l lc 2
plot './S7.data' u 1:($2)/10000000. w p, 'I7.dat' w l lc 2
plot './S8.data' u 1:($2)/10000000. w p, 'I8.dat' w l lc 2
plot './S9.data' u 1:($2)/10000000. w p, 'I9.dat' w l lc 2
plot './S10.data' u 1:($2)/10000000. w p, 'I10.dat' w l lc 2

plot 'I2.dat' w l lc 1, 'E2.dat' w l lc 1, \
 'I3.dat' w l lc 3, 'E3.dat' w l lc 3, \
 'I4.dat' w l lc 2, 'E4.dat' w l lc 2, \
 'I5.dat' w l lc 2, 'E5.dat' w l lc 2, \
 'I6.dat' w l lc 2, 'E6.dat' w l lc 2, \
 'I7.dat' w l lc 2, 'E7.dat' w l lc 2, \
 'I8.dat' w l lc 2, 'E8.dat' w l lc 2, \
 'I9.dat' w l lc 2, 'E9.dat' w l lc 2, \
 'I10.dat' w l lc 2, 'E10.dat' w l lc 2

plot 'I2.dat' w l, 'I2p1.dat' w l, 'I2p2.dat' w l, 'I2p3.dat' w l, 'I2p4.dat' w l, 'I2p5.dat' w l, 'I2p6.dat' w l, 'I2p7.dat' w l, 'I2p8.dat' w l, 'I2p9.dat' w l, 'I3.dat' w l, 'I3p1.dat' w l, 'I3p2.dat' w l, 'I3p3.dat' w l, 'I3p4.dat' w l, 'I3p5.dat' w l, 'I3p6.dat' w l, 'I3p7.dat' w l, 'I3p8.dat' w l, 'I3p9.dat' w l

plot 'I3.dat' w l, 'I3p1.dat' w l, 'I3p2.dat' w l, 'I3p3.dat' w l, 'I3p4.dat' w l, 'I3p5.dat' w l, 'I3p6.dat' w l, 'I3p7.dat' w l, 'I3p8.dat' w l, 'I3p9.dat' w l

plot 'I4.dat' w l, 'I4p1.dat' w l, 'I4p2.dat' w l, 'I4p3.dat' w l, 'I4p4.dat' w l, 'I4p5.dat' w l, 'I4p6.dat' w l, 'I4p7.dat' w l, 'I4p8.dat' w l, 'I4p9.dat' w l

plot 'I1.dat' w l, 'I1p1.dat' w l, 'I1p2.dat' w l, 'I1p3.dat' w l, 'I1p4.dat' w l, 'I1p5.dat' w l, 'I1p6.dat' w l, 'I1p7.dat' w l, 'I1p8.dat' w l, 'I1p9.dat' w l

plot 'I2.dat' w l, 'I2p1.dat' w l, 'I2p2.dat' w l, 'I2p3.dat' w l, 'I2p4.dat' w l, 'I2p5.dat' w l, 'I2p6.dat' w l, 'I2p7.dat' w l, 'I2p8.dat' w l, 'I2p9.dat' w l

set terminal postscript eps
set output "Sp1.eps"
set multiplot layout 1,2
set log y

unset log x
set xrange[1:22]
set xlabel 'Degree'
set ylabel 'log(PDF)'
set title 'Standard Deviation = 0.1'
plot 'Sp1.data'  u 1:($2)/10000000. t "Simulation" w p 6, './Dump/Ep1.dat' t "Analytical" w l lt 1 lw 2

set log x
set xrange[1:1000]
set xlabel 'log(Degree)'
set ylabel 'log(PDF)'
set title 'Standard Deviation = 2.'
plot 'S2.data'  u 1:($2)/10000000. t "Simulation" w p 6, './Dump/E2.dat' t "Analytical" w l lt 1 lw 2

unset multiplot

set terminal x11

