reset
set terminal tikz
set output "J-Temp.tex"
#set terminal wxt
set size square

set xlabel '温度$T$ / $\si{K}$'
set ylabel '磁化$J$ / $\si{Wb.m^{-2}}$'

#set format x "$%.1t \\times 10^{%T}$"
#set format x "$%.1t$"

set xrange [70:298]
set yrange [0:0.27]

set xtics 50, 50, 300
set mxtics 2
set ytics 0, 0.1, 0.3
set mytics 2

#set key left top box
#set key height 1
#set key width -1
#set key spacing 1.5

plot "J-Temp.dat" every 5 notitle pt 6 lc 8 #"C-1_horizontal.dat" title "面内磁場" pt 22 lc 8