set terminal tikz size 10cm, 10cm
set output "day1_01.tex"
#set terminal wxt
set size square

set xlabel "Current / $\\si{\\milli\\ampere}$"
set ylabel "$V_{out}$ / $\\si{\\volt}$"

plot "data.dat" every 1 notitle lt 21 lc -1 ps 2
reset
