reset
set terminal tikz size 12cm, 10cm
set size square
set output "Pb.tex"

set xlabel "Tempereture / $\\si{\\kelvin}$"
set ylabel "$\\rho$ / $\\times10^{-9}\\ \\si{\\ohm.\\metre}$"

set format y "$%.1t$"

set xrange [6:9]
#set yrange [-0.1*10**(-9):4.5*10**(-9)]

#set xtics 0,0,0
#set mxtics 2
#set ytics 0,1*10**(-9),4.5*10**(-9)
#set mytics 2

set key right bottom box
set key height 0
set key width 2
set key spacing 1.5

plot "pb1.dat" u 1:2 title "Pb1"