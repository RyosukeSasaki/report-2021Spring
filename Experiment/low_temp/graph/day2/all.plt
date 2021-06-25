reset
set terminal tikz size 12cm, 10cm
set size square
set output "Pb.tex"

set xlabel "Tempereture / $\\si{\\kelvin}$"
set ylabel "$\\rho$ / $\\times10^{-9}\\ \\si{\\ohm.\\metre}$"

set xrange [2:22]
set yrange [-0.1:4.5]
set xtics 0,5,22
set mxtics 1
set ytics 0,1,4.5
set mytics 2

set key right bottom box
set key height 0
set key width 2
set key spacing 1.5

plot "data.dat" u 1:($2*10**9) title "Pb1", "data.dat" u 1:($4*10**9) title "Pb2"




reset
set terminal tikz size 12cm, 10cm
set output "AuFe.tex"
set size square
set xlabel "Tempereture / $\\si{\\kelvin}$"
set ylabel "$\\rho$ / $\\times10^{-9}\\ \\si{\\ohm.\\metre}$"
unset key

set xrange [2:22]
set yrange [5.5:5.66]
set xtics 0,5,22
set mxtics 1
set ytics 5.5,0.04,5.66
set mytics 2

plot "data.dat" u 1:($3*10**9) notitle




reset
set terminal tikz size 12cm, 10cm
set output "Au.tex"
set size square
set xlabel "Tempereture / $\\si{\\kelvin}$"
set ylabel "$\\rho$ / $\\times10^{-10}\\ \\si{\\ohm.\\metre}$"
unset key

set xrange [2:22]
set yrange [5:6.6]
set xtics 0,5,22
set mxtics 1
set ytics 5,0.4,6.6
set mytics 2

plot "data.dat" u 1:($5*10**(10)) notitle