reset
set terminal tikz size 12cm, 10cm
set size square
set output "AuFe.tex"
#set term wxt

set xlabel "Tempereture / $\\si{\\kelvin}$"
set ylabel "$\\rho$ / $\\times10^{-9}\\ \\si{\\ohm.\\metre}$"

#set xrange [2:22]
#set yrange [5.5:5.66]
#set xtics 0,5,22
#set mxtics 1
#set ytics 5.5,0.04,5.66
#set mytics 2

set key right bottom box
set key height 0
set key width 3
set key spacing 1.5

a2=5.7
a3=5.7
a4=5.7
a5=5.7
b2=0.0005
b3=0.0005
b4=0.0005
b5=0.0005
c2=0.1
c3=0.1
c4=0.1
c5=0.1


f2(x)=a2 + b2 * x**2 - c2 * log(x)
f3(x)=a3 + b3 * x**3 - c3 * log(x)
f4(x)=a4 + b4 * x**4 - c4 * log(x)
f5(x)=a5 + b5 * x**5 - c5 * log(x)

fit [2:22] f2(x) "data.dat" u 1:($3*10**9) via a2, b2, c2
fit [2:22] f3(x) "data.dat" u 1:($3*10**9) via a3, b3, c3
fit [2:22] f4(x) "data.dat" u 1:($3*10**9) via a4, b4, c4
fit [2:22] f5(x) "data.dat" u 1:($3*10**9) via a5, b5, c5

plot "data.dat" u 1:($3*10**9) notitle lt 8 lc -1 ps 2,\
f2(x) title "$n=2$" lc 1,\
f3(x) title "$n=3$" lc 2,\
f4(x) title "$n=4$" lc 3,\
f5(x) title "$n=5$" lc 7