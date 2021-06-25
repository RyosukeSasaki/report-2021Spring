reset
set terminal tikz size 12cm, 10cm
set size square
set output "Au.tex"
#set term wxt

set xlabel "Tempereture / $\\si{\\kelvin}$"
set ylabel "$\\rho$ / $\\times10^{-10}\\ \\si{\\ohm.\\metre}$"

set xrange [2:22]
set yrange [5:6.6]
set xtics 0,5,22
set mxtics 1
set ytics 5,0.4,6.6
set mytics 2

set key right bottom box
set key height 0
set key width 3
set key spacing 1.5

a2=0.5
a3=0.5
a4=0.5
a5=0.5
b2=1
b3=1
b4=1
b5=3.8*10**(-7)

f2(x)=a2+b2*x**2
f3(x)=a3+b3*x**3
f4(x)=a4+b4*x**4
f5(x)=a5+b5*x**5

fit [7.3:22] f2(x) "data.dat" u 1:($5*10**(10)) via a2, b2
fit [7.3:22] f3(x) "data.dat" u 1:($5*10**(10)) via a3, b3
fit [7.3:22] f4(x) "data.dat" u 1:($5*10**(10)) via a4, b4
fit [7.3:22] f5(x) "data.dat" u 1:($5*10**(10)) via a5, b5

plot "data.dat" u 1:($5*10**(10)) notitle lt 8 lc -1 ps 2,\
f2(x) title "$n=2$" lc 1,\
f3(x) title "$n=3$" lc 2,\
f4(x) title "$n=4$" lc 3,\
f5(x) title "$n=5$" lc 7