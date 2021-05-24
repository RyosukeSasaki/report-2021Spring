set terminal tikz size 10cm, 10cm
set output "day1_02.tex"
#set terminal wxt
set size square

set xlabel "Current / $\\si{\\milli\\ampere}$"
set ylabel "$V_{out}$ / $\\si{\\volt}$"

set xrange [0:35]
set yrange [-0.8:-0.45]

a=-0.1
b=-0.45
f(x)=a*x+b
fit [0:22.5] f(x) "data.dat" u 1:2 via a,b

c=-0.05
d=10
g(x)=c*x+d
fit [22.5:31] g(x) "data.dat" u 1:2 via c,d

plot "data.dat" every 1 notitle lt 21 lc -1 ps 2, f(x) title "$f(x)$" lt -1 dt 2 lw 2, g(x) title "$g(x)$" lt -1 dt 5 lw 2
reset