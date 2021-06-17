reset
set terminal tikz size 10,14
pi=3.14159265
#fname=""
oname     ="2-C-01/theo-bode.tex"
set output oname
#set terminal wxt
set size ratio 0.6
set samples 1000
set logscale x

set xrange [7:11000]

R1=1984
C=0.099*10**(-6)

omega(x)=2*pi*x
G(x)=-20*log10(sqrt(1+(C*R1*omega(x))))
phase(x)=-atan(C*R1*omega(x))

#tit="$\\sigma=5.704\\pm0.006$, $x_0=657.8\\pm0.0$"
#set yrange [-40:1]
set multiplot layout 2,1
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Gain / $\\si{\\decibel}$"
plot G(x) notitle lw 2
#set yrange [:3.2]
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Phase / $\\si{rad}$"
plot phase(x) notitle lw 2
reset

