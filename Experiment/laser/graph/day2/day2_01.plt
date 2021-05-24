reset
set terminal tikz size 10cm, 10cm
pi=3.14159265
fname="data/Bd.txt"
oname     ="Bd_slope.tex"
set output oname
#set terminal wxt
set size square
set samples 100000

#set yrange [-0.72:-0.63]
set xrange [620:700]
#set xrange [650:670]
#set xrange [655:663]

set xlabel "$\\lambda$ / $\\si{\\nano\\metre}$"
set ylabel "$V_{out}$ / $\\si{\\volt}$"

set key below

a=-0.55
b=0.00007541
c=-0.0001
sigma=5.4
x0=657.6
f(x)=a+c*(x)-x*b*exp(-(x-x0)**2/(2*sigma**2))
fit [600:720] f(x) fname via a, b, c, sigma, x0

tit="$\\sigma=5.704\\pm0.006$, $x_0=657.8\\pm0.0$"
plot fname every 30 notitle lt 21 lc -1 ps 2, f(x) title tit lw 2