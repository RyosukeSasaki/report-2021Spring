set terminal tikz size 12cm, 8cm
set output "hot_water.tex"
#set terminal wxt
#set size square

set xlabel "経過時間$t$ / $\\si{\\second}$"
set ylabel "電圧 / $\\si{\\volt}$"

#set format x "$%.1t \\times 10^{%T}$"

set xrange [0:4200]
set yrange [3:3.35]

set xtics 0,1000,4000
set mxtics 2
set ytics 3,0.1,3.4
set mytics 2

#set key left top box
#set key height 1
#set key width -1
#set key spacing 1.5

plot "data/2019-05-20_152544.txt" every 1 notitle lt 16 lc -1