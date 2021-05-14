reset
set terminal tikz size 12cm, 8cm
set output "solar_radio.tex"
#set terminal wxt
#set size square

set xlabel "経過時間$t$ / $\\si{\\second}$"
set ylabel "電圧 / $\\si{\\volt}$"

#set format x "$%.1t \times 10^{%T}$"
set object 1 rect from first 583, first 1 to first 3620, first 2.5 behind linewidth 0 fillcolor rgb "cyan" fill solid 0.3 noborder
set object 2 rect from first 3622, first 1 to first 4003, first 2.5 behind linewidth 0 fillcolor rgb "red" fill solid 0.3 noborder

set xrange [0:4500]
set yrange [1:2.5]

set xtics 0,1000,5000
set mxtics 2
set ytics 1,0.2,2.6
set mytics 2

plot "data/2019-04-22_134315.txt" every 1 notitle lt 21 lc -1