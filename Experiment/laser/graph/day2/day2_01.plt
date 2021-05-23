reset
set terminal tikz size 10cm, 10cm
pi=3.14159265
fname="data/Be.txt"
oname     ="Be.tex"
set output oname
#set terminal wxt
set size square
set samples 100000

#set yrange [-0.72:-0.63]
set xrange [400:800]
#set xrange [650:670]
#set xrange [655:663]

set xlabel "$\\lambda$ / $\\si{\\nano\\metre}$"
set ylabel "$V_{out}$ / $\\si{\\volt}$"

set key below

a=-0.48
b=0.23
sigma=1.199
x0=658.8
f(x)=a-b*exp(-(x-x0)**2/(2*sigma**2))
#fit [620:700] f(x) fname via a, b, sigma, x0
#fit [640:670] f(x) fname via a, b, sigma, x0

tit="$\\sigma=1.212\\pm0.001$, $x_0=658.8\\pm0.0$"
plot fname every 30 notitle lt 21 lc -1 ps 2#, f(x) title tit lw 2