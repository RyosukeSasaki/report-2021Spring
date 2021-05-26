reset
set terminal tikz size 10cm, 8cm
set output "ac.tex"
#set terminal wxt
set size square

set xlabel "$パターン数$N$$"
set ylabel "計算時間 / $\\si{\\second}$"

#set format y "$%.1t$"

set xrange [0:10]
#set yrange [0:0]

#set xtics 0,0,0
#set mxtics 2
#set ytics 0,0,0
#set mytics 2

plot "ac.dat" u 1:2 every 1 notitle lt 21 lc -1 ps 2