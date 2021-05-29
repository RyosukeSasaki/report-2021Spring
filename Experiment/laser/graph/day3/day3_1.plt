reset
set terminal tikz size 10cm, 10cm
pi=3.14159265
fname="day3_1.dat"
oname="day3_2.tex"
set output oname
#set terminal wxt
set size square
set samples 100000

set xrange [60:120]
set yrange [0.2:0.5]

set xtics 60,20,120
set mxtics 2
set ytics 0.2,0.1,0.5
set mytics 2

set xlabel "$D$ / $\\si{\\micro\\metre}$"
set ylabel "$t/T$ / $\\si{\\nano\\metre}$"
#a=0.00405648, b=-0.0160335
#set key below
a=0.004
b=-0.016
f(x)=a*x+b

fit f(x) fname via a, b
#tit="$\\sigma=1.212\\pm0.001$, $x_0=658.8\\pm0.0$"
plot fname every 1 notitle lt 21 lc -1 ps 2#, f(x) notitle lt -1 dt 5 lw 2
