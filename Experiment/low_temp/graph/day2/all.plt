reset
set terminal tikz size 12cm, 10cm
set size square
set output "Pb.tex"

set xlabel "Tempereture / $\\si{\\kelvin}$"
set ylabel "$\\rho$ / $\\times10^{-9}\\ \\si{\\ohm.\\metre}$"

set format y "$%.1t$"

#set xrange [0:0]
set yrange [-0.1*10**(-9):4.5*10**(-9)]

#set xtics 0,0,0
#set mxtics 2
set ytics 0,1*10**(-9),4.5*10**(-9)
set mytics 2

set key right bottom box
set key height 0
set key width 2
set key spacing 1.5

plot "data.dat" u 1:2 title "Pb1", "data.dat" u 1:4 title "Pb2"

reset
set terminal tikz size 12cm, 10cm
set output "AuFe.tex"
set size square
set xlabel "Tempereture / $\\si{\\kelvin}$"
set ylabel "$\\rho$ / $\\times10^{-9}\\ \\si{\\ohm.\\metre}$"
set format y "$%.1t$"
unset key

plot "data.dat" u 1:3 notitle

reset
set terminal tikz size 12cm, 10cm
set output "Au.tex"
set size square
set xlabel "Tempereture / $\\si{\\kelvin}$"
set ylabel "$\\rho$ / $\\times10^{-10}\\ \\si{\\ohm.\\metre}$"
set format y "$%.1t$"
unset key

plot "data.dat" u 1:5 notitle