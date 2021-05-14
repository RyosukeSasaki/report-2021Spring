reset
set terminal tikz size 12cm, 8cm
set output "allan.tex"

set xlabel "$T$ / $\\si{\\second}$"
set ylabel "$\\sigma_A^2$ / $\\si{\\volt^2}$"

set format y "$10^{%T}$"
set logscale xy
set label 1 at first 59,0.00000030 "$(59,3.60\\times10^{-7})$"

plot "data/2019-04-22_144019.allan.txt" every 1 notitle lt 21 lc -1