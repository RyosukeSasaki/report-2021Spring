reset
set terminal tikz size 10cm, 10cm
set output "current_FWHM.tex"
#set terminal wxt
set size square
set samples 100000

set xrange [0:32]
set yrange [0:22]

set xtics 0,10,30
set mxtics 2
#set ytics 0,0,0
#set mytics 2

set xlabel "Current / $\\si{\\milli\\ampere}$"
set ylabel "Line Width / $\\si{\\nano\\metre}$"
#a=0.00315923 pm 0.0001085
#b=0.7021046 pm 0.03598
a=1/250
b=0
y(x)=a*x+b
#fit y(x) "current_FWHM.dat" via a, b

plot "current_FWHM.dat" notitle lt 21 lc -1 ps 2