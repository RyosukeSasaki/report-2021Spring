reset
set terminal tikz size 10,14
pi=3.14159265
#fname=""
oname     ="1-B/theo-bode.tex"
set output oname
#set terminal wxt
set size ratio 0.6
set samples 1000
set logscale x

set xrange [7:110000]

R1=1034
R2=608.4

G(x)=1+R2/R1
phase(x)=0

#tit="$\\sigma=5.704\\pm0.006$, $x_0=657.8\\pm0.0$"
set multiplot layout 2,1
set xlabel "frequency / $\\si{\\hertz}$"
set ylabel "$|G(s)|$ / $\\si{\\decibel}$"
plot G(x) notitle lw 2
set xlabel "frequency / $\\si{\\hertz}$"
set ylabel "phase / $\\si{rad}$"
plot phase(x) notitle lw 2