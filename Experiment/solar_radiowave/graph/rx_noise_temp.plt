reset
set terminal tikz size 12cm, 8cm
set output "rx_noise_temp.tex"
#set terminal wxt
#set size square

set xlabel "経過時間$t$ / $\\si{\\second}$"
set ylabel "電圧 / $\\si{\\volt}$"

#set format x "$%.1t \times 10^{%T}$"
set object 1 rect from graph 0, graph 0 to graph 0.6, graph 1 behind linewidth 0 fillcolor rgb "cyan" fill solid 0.3 noborder
set object 2 rect from graph 0.7308, graph 0 to graph 0.9462, graph 1 behind linewidth 0 fillcolor rgb "red" fill solid 0.3 noborder

set xrange [0:1300]
set yrange [1.9:3.35]

set xtics 0,500,1500
set mxtics 5
set ytics 2,0.5,3.2
set mytics 5

#set key left top box
#set key height 1
#set key width -1
#set key spacing 1.5

plot "data/2019-05-24_133739.txt" every 1 notitle lt 21 lc -1