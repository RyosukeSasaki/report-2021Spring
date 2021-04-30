set terminal tikz
set output "C-3_Ni-disk.tex"
#set terminal wxt
set size square

set format y "$%.1t$"

set xrange [0:180]
set yrange [-100000:100000]

set xlabel '角度$\theta$ / $\si{\degree}$'
set ylabel '単位体積あたりのトルク$L$ / $\times 10^{4}\ \si{\newton.\meter^{-2}}$'

set xtics 0, 30, 180
set mxtics 3
set ytics -90000, 30000, 90000
set mytics 3
set xzeroaxis lw 1.5
#set yzeroaxis lw 1.5

plot "Ni-disk.dat" notitle  pt 6 lc 8