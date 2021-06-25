reset
set terminal tikz size 12cm, 10cm
set size square
set output "Pb.tex"
#set term wxt

set xlabel "Tempereture / $\\si{\\kelvin}$"
set ylabel "$\\rho$ / $\\times10^{-9}\\ \\si{\\ohm.\\metre}$"

set format y "$%.0t$"

set xrange [2:22]
set yrange [-0.1*10**(-9):4.5*10**(-9)]

#set xtics 0,0,0
#set mxtics 2
set ytics 0,1*10**(-9),4.5*10**(-9)
set mytics 2

set key right bottom box
set key height 0
set key width 3
set key spacing 1.5

a2=0.5*10**(-9)
a3=0.5*10**(-9)
a4=0.5*10**(-9)
a5=0.5*10**(-9)
b2=1*10**(-9)
b3=1*10**(-9)
b4=1*10**(-9)
b5=1*10**(-9)

f2(x)=a2+b2*x**2
f3(x)=a3+b3*x**3
f4(x)=a4+b4*x**4
f5(x)=a5+b5*x**5

fit [7.3:22] f2(x) "data.dat" via a2, b2
fit [7.3:22] f3(x) "data.dat" via a3, b3
fit [7.3:22] f4(x) "data.dat" via a4, b4
fit [7.3:22] f5(x) "data.dat" via a5, b5

plot "data.dat" u 1:2 notitle lt 8 lc -1 ps 2,\
f2(x) title "$n=2$" lc 1,\
f3(x) title "$n=3$" lc 2,\
f4(x) title "$n=4$" lc 3,\
f5(x) title "$n=5$" lc 7