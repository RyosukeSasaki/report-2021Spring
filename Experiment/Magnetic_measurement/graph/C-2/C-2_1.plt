set terminal tikz
set output "C-2_Ni.tex"
#set terminal wxt
set size square

set yrange [-21:21]

set xlabel '角度$\theta$ / $\si{\degree}$'
set ylabel '相殺電流$i$ / $\si{\milli\ampere}$'
set xzeroaxis lw 1.5
#set yzeroaxis lw 1.5

plot "Ni.dat" notitle  pt 6 lc 8