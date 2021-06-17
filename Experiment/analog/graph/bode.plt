reset
set terminal tikz size 10,14
pi=3.14159265
fname     ="3-B/data.dat"
oname     ="3-B/bode.tex"
set output oname
#set terminal wxt
set size ratio 0.6
set samples 1000
set logscale x

set xrange [7:11000]

#R1=2003
#R2=2009
#C=0.102*10**(-6)

#G(x)=20*log10(omega(x)/(sqrt((omega(x))**2+(1/(C*R1))**2)))
#phase(x)=-pi/2-atan(C*R1*omega(x))
#G(x)=-20*log10(sqrt(1+(C*R2*omega(x))**2))
#phase(x)=pi-atan(C*R2*omega(x))
omega(x)=2*pi*x
R1=2036
R2=2005
R3=2003
R4=2009
C1=0.103*10**(-6)
C2=0.102*10**(-6)

#G(x)=20*log10(R2*R4/R1/R3)
G(x)=-20*log10(sqrt((1+(C1*R2*omega(x))**2)))+20*log10(1/sqrt(1+(1/C2/R4/omega(x))**2))
phase(x)=pi/2-atan(C1*R2*omega(x))-atan(C2*R4*omega(x))

set multiplot layout 2,1
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Gain / $\\si{\\decibel}$"
plot fname u 1:2 notitle lt 16 ps 2, G(x) notitle dt 2 lc -1
set xlabel "Frequency / $\\si{\\hertz}$"
set ylabel "Gain / $\\si{\\decibel}$"
plot fname u 1:3 notitle lt 16 ps 2, phase(x) notitle dt 2 lc -1
reset