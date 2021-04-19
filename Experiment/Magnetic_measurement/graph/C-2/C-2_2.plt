set terminal tikz
set output "C-2_FeSi.tex"
#set terminal wxt
set size square

set xrange [-10:370]
set yrange [-0.0005:0.0005]

set xlabel '角度$\theta$ / $\si{\degree}$'
set ylabel 'トルク$L$ / $\si{\newton.\meter}$'

#set xtics 0, 50, 360
#set mxtics 2
set ytics -0.0004, 0.0002, 0.0004
set mytics 2

plot "FeSi.dat" notitle  pt 6 lc 8