set terminal png
set output 'helmholtz.png'

set size square
set format y "%.1t"

set xlabel 'I / A'
set ylabel 'B / ×10^{-3}T'

plot "helmholtz.dat" notitle lt 15 lc black

