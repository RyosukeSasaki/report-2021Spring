reset
set terminal tikz
set output "LaGd77K.tex"
#set terminal wxt
set size square

set xlabel '磁場$H$ / $\times 10^{5}\ \si{A.m^{-1}}$'
set ylabel '磁化$J$ / $\si{Wb.m^{-2}}$'

#set format x "$%.1t \\times 10^{%T}$"
set format x "$%.1t$"

set xrange [-340000:340000]
set yrange [-1.4:1.4]

set xtics -300000, 150000, 300000
set mxtics 3
set ytics -1.5, 0.5, 1.5
#set mytics 0

#set key left top box
#set key height 1
#set key width -1
#set key spacing 1.5
set xzeroaxis lw 1.5
set yzeroaxis lw 1.5

plot "77K.dat" notitle pt 6 lc 8 #"C-1_horizontal.dat" title "面内磁場" pt 22 lc 8