set terminal tikz
set output "deMagComp_torque.tex"
#set terminal wxt
set size square

set xlabel '磁場$H$ / $\times 10^{5}\ \si{A.m^{-1}}$'
set ylabel '磁化$J$ / $\si{Wb.m^{-2}}$'

#set format x "$%.1t \\times 10^{%T}$"
set format x "$%.1t$"

set xrange [-300000:300000]
set yrange [-0.6:0.6]

set xtics -200000, 200000, 200000
set mxtics 2
set ytics -0.6, 0.2, 0.6
set mytics 2

set key left top box
set key height 1
set key width -1
set key spacing 1.5

Nx=0.1316
Ny=0.7368
mu=1.257*10**(-6)

plot "C-1_vertical.dat" using ($1-Ny/mu*($2)):2 title "面直磁場" pt 6 lc 8, "C-1_horizontal.dat" using ($1-Nx/mu*($2)):2 title "面内磁場" pt 22 lc 8
