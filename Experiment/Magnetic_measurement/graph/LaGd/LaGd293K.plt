reset
set terminal tikz
set output "LaGd293K.tex"
#set terminal wxt
set size square

set xlabel '磁場$H$ / $\times 10^{5}\ \si{A.m^{-1}}$'
set ylabel '磁化$J$ / $\si{Wb.m^{-2}}$'

#set format x "$%.1t \\times 10^{%T}$"
set format x "$%.1t$"

set xrange [-330000:330000]
set yrange [-0.04:0.04]

set xtics -400000, 200000, 400000
set mxtics 2
set ytics -0.04, 0.04, 0.04
set mytics 4

#set key left top box
#set key height 1
#set key width -1
#set key spacing 1.5
set xzeroaxis lw 1.5
set yzeroaxis lw 1.5

plot "293K.dat" notitle pt 6 lc 8 #"C-1_horizontal.dat" title "面内磁場" pt 22 lc 8

