reset
set terminal tikz
set output "C-2_Ni_torque.tex"
#set terminal wxt
set size square

pi=3.141592
set format y "$%.1t$"
#set yrange [-21:21]

set xlabel '角度$\theta$ / $\si{\degree}$'
#set ylabel '相殺電流$i$ / $\si{\milli\ampere}$'
set ylabel '単位体積あたりのトルク$L$ / $\times 10^{4}\ \si{\newton.\meter^{-2}}$'

set xzeroaxis lw 1.5
#set yzeroaxis lw 1.5

plot "Ni.dat" u 1:($2*6.047*10**(-5)/(pi*0.001**2*0.007)) notitle  pt 6 lc 8