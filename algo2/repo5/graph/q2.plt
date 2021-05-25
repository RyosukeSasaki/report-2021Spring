reset
set terminal tikz size 10cm, 8cm
set output "bellman.tex"
#set terminal wxt
set size square

set xlabel "$N$"
set ylabel "計算量 / $\\times 10^6$"

#set format y "$%.1t$"

set xrange [0:2050]
#set yrange [0:0]

#set xtics 0,0,0
#set mxtics 2
#set ytics 0,0,0
#set mytics 2

set key left top box
set key spacing 1.5

a=10
b=10
n=2
m=2
f(x)=a*x**n
g(x)=b*x**m

fit f(x) "bellman.dat" u 1:2 via a, n
fit g(x) "bellman.dat" u 1:3 via b, m

plot "bellman.dat" u 1:2 every 1 title "Dense graph" lt 21 lc -1 ps 2,"bellman.dat" u 1:3 every 1 title "Sparse graph" lt 16 lc -1 ps 2, f(x) notitle lt 21 lc -1 dt 5, g(x) notitle lt 21 lc -1 dt 2