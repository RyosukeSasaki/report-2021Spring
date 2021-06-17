reset
set terminal tikz size 10,14
pi=3.14159265
#fname=""
oname     ="2-A-03/theo-bode.tex"
set output oname
#set terminal wxt
set size ratio 0.6
set samples 1000
set logscale x

set xrange [0.01:1100]

R1=100000
R2=101000
C=0.103*10**(-6)

omega(x)=2*pi*x
G(x)=20*log10(R2/R1)-20*log10(sqrt(1+(C*R2*omega(x))**2))
phase(x)=pi-atan(C*R2*omega(x))
f(x)=-20*log10(C*R1*omega(x))
g(x)=20*log(R2/R1)

#tit="$\\sigma=5.704\\pm0.006$, $x_0=657.8\\pm0.0$"
set yrange [-40:1]
set multiplot layout 2,1
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Gain / $\\si{\\decibel}$"
plot G(x) notitle lw 2, f(x) notitle lt -1 dt 2, g(x) notitle lt -1 dt 2
set yrange [1.4:3.2]
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Phase / $\\si{rad}$"
plot phase(x) notitle lw 2
reset

