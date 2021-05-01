set terminal tikz
set output "Fe-Si_fit.tex"
#set terminal wxt
set size square
set angles degrees

set key bottom left
set key box
set key height 1
set key width -1
set key spacing 1.5
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

pi = 3.1415
a=36075.85726
b=415.1271339
#the = -0.86 * 180 / pi
the = -40
f(x) = -a/8*(2*sin(2*x)+3*sin(4*x))-b/64*(sin(2*x)+4*sin(4*x)-3*sin(6*x))
g(x) = f(x - the)

#fit g(x) "FeSi.dat" u 1:3 via the, a, b
plot "FeSi.dat" u 1:3 title "測定値" pt 6 lc 8, g(x) title "理論値" lt 8 dt 3