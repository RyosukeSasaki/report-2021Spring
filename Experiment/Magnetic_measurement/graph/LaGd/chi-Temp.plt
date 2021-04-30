reset
set terminal tikz
set output "chi-1-Temp.tex"
#set terminal wxt
set size square

set xlabel '温度$T$ / $\si{K}$'
set ylabel '$\chi^{-1}$ / $\times 10^{6}$'

#set format x "$%.1t \\times 10^{%T}$"
set format y "$%.1t$"

set xrange [70:298]
set yrange [0:4700000]

set xtics 50, 50, 300
set mxtics 2
set ytics 0, 1000000, 4500000
set mytics 2

#set key left top box
#set key height 1
#set key width -1
#set key spacing 1.5
Hext=50965.8755

plot "J-Temp.dat" u 1:(Hext/($2)) every 5 notitle pt 6 lc 8