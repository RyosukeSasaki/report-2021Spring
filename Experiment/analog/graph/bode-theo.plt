reset
set terminal tikz size 10,14
pi=3.14159265
#fname=""
oname     ="3-C/theo-bode.tex"
set output oname
#set terminal wxt
set size ratio 0.6
set samples 1000
set logscale x

set xrange [7:11000]
omega(x)=2*pi*x
R1=2036
R2=2005
R3=2011
R4=1997
C1=0.103*10**(-6)
C2=0.099*10**(-6)

#G(x)=20*log10(R2*R4/R1/R3)
G(x)=-20*log10(sqrt((1+(C1*R2*omega(x))**2)))-20*log10(sqrt((1+(C2*R4*omega(x))**2)))
phase(x)=-atan(C1*R2*omega(x))-atan(C2*R4*omega(x))

set multiplot layout 2,1
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Gain / $\\si{\\decibel}$"
plot G(x) notitle lw 2
#set yrange [:3.2]
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Phase / $\\si{rad}$"
plot phase(x) notitle lw 2
reset

