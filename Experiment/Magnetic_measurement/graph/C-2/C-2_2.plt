set terminal tikz
set output "C-2_FeSi.tex"
#set terminal wxt
set size square

set format y "$%.1t$"

set xrange [-10:370]
set yrange [-25000:25000]

set xlabel '角度$\theta$ / $\si{\degree}$'
set ylabel '単位体積あたりのトルク$L$ / $\times 10^{4}\ \si{\newton.\meter^{-2}}$'

set xtics 0, 50, 360
set mxtics 2
set ytics -30000, 10000, 30000
set mytics 2
set xzeroaxis lw 1.5
#set yzeroaxis lw 1.5

plot "FeSi.dat" u 1:3 notitle  pt 6 lc 8