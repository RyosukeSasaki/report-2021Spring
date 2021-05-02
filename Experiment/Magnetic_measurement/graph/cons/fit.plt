reset
set terminal tikz size 8cm,8cm
set output "torque_fit.tex"
#set terminal wxt
set size square

set xrange [0:17]
set yrange [-700000:700000]

set format y "$%.1t$"

set xlabel '$x$'
set ylabel '$y$ / $\times 10^5$'
#set samples 100000

#set ytics 0, 0.5, 1.5
#set mytics 1

set key left top box
set key height 1
set key width 0
set key spacing 1.5
a=36075.85726
b=415.1271339
f(x)=a*x+b
g(x)=-a*x-b

plot "fit.dat" pt 6 lc 8 notitle, f(x) lt 6 title "$K_1$, $K_2$: 正", g(x) lt 15 title "$K_1$, $K_2$: 負"
#y(x) notitle lt 8 dt 2, f(x) dt 5 lt 8 title '$y={k\Theta x}/{Ng^2\mu_B^2J^2\omega}$'