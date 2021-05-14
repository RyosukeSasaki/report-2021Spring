reset
set terminal tikz size 12cm, 8cm
set output "allan_raw.tex"
#set terminal wxt
#set size square

set xlabel "経過時間$t$ / $\\si{\\second}$"
set ylabel "電圧 / $\\si{\\volt}$"

#set format x "$%.1t \times 10^{%T}$"
#set logscale xy
set xrange [1000:5001]
#set yrange [1.9:3.35]

#set xtics 0,500,1500
#set mxtics 5
#set ytics 2,0.5,3.2
#set mytics 5

#set key left top box
#set key height 1
#set key width -1
#set key spacing 1.5

plot "data/2019-04-22_144019.txt" every 1 notitle lt 21 lc -1