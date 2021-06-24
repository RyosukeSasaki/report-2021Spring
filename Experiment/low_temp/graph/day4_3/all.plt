reset
set terminal tikz size 12cm, 10cm
set size square
set output "Pb1.tex"
#set term wxt

set xlabel "Tempereture / $\\si{\\kelvin}$"
set ylabel "$H_C$ / $\\si{Oe}$"

#set format y "$%.1t$"

set xrange [0:7.5]
set yrange [0:830]

set ytics 0,100,800
set mytics 2
set xtics 0,1,7.5
set mxtics 2

#set key right bottom box
set key height 0
set key width 2
set key spacing 1.5

H=800
T0=7.204616
f(x)=H*(1-(x/T0)**2)

fit [0:7.5] f(x) "pb1.dat" via H

plot "pb1.dat" u 1:2 notitle lt 8 lc -1 ps 2, f(x) notitle dt 2 lc -1