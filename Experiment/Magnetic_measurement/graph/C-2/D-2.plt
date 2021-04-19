#set terminal tikz
#set output "D-2.tex"
set terminal wxt
set size square
set angles degrees

set xrange [-10:370]
set yrange [-0.0005:0.0005]

set xlabel '角度$\theta$ / $\si{\degree}$'
set ylabel 'トルク$L$ / $\si{\newton.\meter}$'

#set xtics 0, 50, 360
#set mxtics 2
set ytics -0.0004, 0.0002, 0.0004
set mytics 2

pi = 3.1415
a=0.00085002
b=9.7812E-06
the = -0.86 * 180 / pi
f(x) = -a/8*(2*sin(2*x)+3*sin(4*x))-b/64*(sin(2*x)+4*sin(4*x)-3*sin(6*x))

#fit f(x) "FeSi.dat" u 2:1 via the
plot "FeSi.dat" notitle  pt 6 lc 8, f(x-the)