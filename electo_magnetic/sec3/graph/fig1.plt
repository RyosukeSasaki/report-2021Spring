reset
set terminal tikz
set output "fig1.tex"
#set terminal wxt
set size square

set xlabel "$\\lambda$ / $\\si{\\micro\\metre}$"
set ylabel "$i\\lambda^4$"

#set format x "$%.1t \times 10^{%T}$"

#set xrange [0:0]
set yrange [0:10]

#set xtics 0,0,0
#set mxtics 2
#set ytics 0,0,0
#set mytics 2

a=-0.01
b=2.7
f(x) = a*x + b
fit f(x) "fig1.dat" u 1:3 via a, b

plot "fig1.dat" u 1:3 notitle lt 21 lc -1, f(x) title "回帰曲線"