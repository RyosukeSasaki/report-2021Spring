reset
set terminal tikz size 10cm, 10cm
set output "width_FWHM.tex"
#set terminal wxt
set size square
set samples 100000

set xlabel "Slit Width / $\\si{\\micro\\metre}$"
set ylabel "Beam Width / $\\si{\\nano\\metre}$"
#a=0.00315923 pm 0.0001085
#b=0.7021046 pm 0.03598

set xrange [50:550]
set yrange [0.2:1.8]

set xtics 0,100,600
set mxtics 2
set ytics 0.2,0.4,1.8
set mytics 2

a=1/250
b=0
y(x)=a*x+b
fit y(x) "width_FWHM.dat" via a, b
c=0.004714
d=0
g(x)=c*x+d

set key bottom right

plot "width_FWHM.dat" notitle lt 21 lc -1 ps 2, y(x) dt 2 lc -1 lw 2 title "$f(x)$", g(x) dt 5 lc -1 lw 2 title "$g(x)$"