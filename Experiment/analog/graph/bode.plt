reset
set terminal tikz size 10,14
pi=3.14159265
fname     ="1-A/1-A-02.dat"
oname     ="1-A/bode.tex"
set output oname
#set terminal wxt
set size ratio 0.6
set samples 1000
set logscale x

set xrange [7:110000]

R1=999
R2=334.4

G(x)=R2/R1
phase(x)=pi

#tit="$\\sigma=5.704\\pm0.006$, $x_0=657.8\\pm0.0$"
set multiplot layout 2,1
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Gain / $\\si{\\decibel}$"
plot fname u 1:(20*log10($3)) notitle lt 16 ps 2
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Gain / $\\si{\\decibel}$"
plot fname u 1:4 notitle lt 16 ps 2