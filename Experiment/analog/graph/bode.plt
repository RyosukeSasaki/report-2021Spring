reset
set terminal tikz size 10,14
pi=3.14159265
fname     ="2-C-01/2-C-01.dat"
oname     ="2-C-01/bode.tex"
set output oname
#set terminal wxt
set size ratio 0.6
set samples 1000
set logscale x

set xrange [7:110000]

R1=1984
C=0.099*10**(-6)

omega(x)=2*pi*x
G(x)=-20*log10(sqrt(1+(C*R1*omega(x))))
phase(x)=-atan(C*R1*omega(x))

#tit="$\\sigma=5.704\\pm0.006$, $x_0=657.8\\pm0.0$"
set multiplot layout 2,1
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Gain / $\\si{\\decibel}$"
plot fname u 1:2 notitle lt 16 ps 2, G(x) notitle dt 2 lc -1
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Gain / $\\si{\\decibel}$"
plot fname u 1:3 notitle lt 16 ps 2, phase(x) notitle dt 2 lc -1